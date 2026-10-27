import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:gozy/utils/inspection/inspection_queue_store.dart';

enum UploadStatus { pending, uploading, failed, done }

/// What the server (or the network) answered to one upload.
enum UploadOutcomeKind {
  /// Stored: [UploadOutcome.photoId] is set.
  success,

  /// No connection, timeout, 429 or 5xx: worth trying again later.
  retryable,

  /// Refused for good (format, size, limit, rights, locked, window closed...).
  rejected,

  /// The caller cancelled the upload.
  cancelled,
}

class UploadOutcome {
  const UploadOutcome(this.kind,
      {this.photoId, this.version, this.httpStatus, this.message});

  final UploadOutcomeKind kind;
  final int? photoId;
  final int? version;
  final int? httpStatus;
  final String? message;
}

/// Sends a processed picture to the server. Implemented over HTTP in
/// inspection_http.dart; replaced by a fake in the tests.
abstract class InspectionPhotoUploader {
  Future<UploadOutcome> upload({
    required int reservationId,
    required String type,
    required String filePath,
    void Function(double progress)? onProgress,
    UploadCancelToken? cancelToken,
  });

  /// Removes a photo already stored on the server.
  Future<UploadOutcome> remove(int photoId);
}

class UploadCancelToken {
  bool _cancelled = false;
  bool get isCancelled => _cancelled;
  void cancel() => _cancelled = true;
}

/// One picture waiting to be sent for a reservation.
class UploadItem {
  UploadItem({
    required this.localId,
    required this.reservationId,
    required this.type,
    required this.filePath,
    this.status = UploadStatus.pending,
    this.attempts = 0,
    this.photoId,
    this.errorMessage,
    this.progress = 0,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  final String localId;
  final int reservationId;

  /// checkin, checkout or attachment (the API names of the upload routes).
  final String type;
  final String filePath;
  UploadStatus status;
  int attempts;
  int? photoId;
  String? errorMessage;
  double progress;
  final DateTime createdAt;

  bool get isActive =>
      status == UploadStatus.pending || status == UploadStatus.uploading;

  Map<String, dynamic> toJson() => {
        'localId': localId,
        'reservationId': reservationId,
        'type': type,
        'filePath': filePath,
        'status': status.name,
        'attempts': attempts,
        'photoId': photoId,
        'errorMessage': errorMessage,
        'createdAt': createdAt.toIso8601String(),
      };

  static UploadItem? fromJson(Object? json) {
    if (json is! Map) return null;
    final localId = json['localId'];
    final reservationId = json['reservationId'];
    final type = json['type'];
    final filePath = json['filePath'];
    if (localId is! String ||
        reservationId is! int ||
        type is! String ||
        filePath is! String) {
      return null;
    }
    final status = UploadStatus.values.firstWhere(
      (value) => value.name == json['status'],
      orElse: () => UploadStatus.pending,
    );
    return UploadItem(
      localId: localId,
      reservationId: reservationId,
      type: type,
      filePath: filePath,
      status: status,
      attempts: json['attempts'] is int ? json['attempts'] as int : 0,
      photoId: json['photoId'] is int ? json['photoId'] as int : null,
      errorMessage: json['errorMessage'] as String?,
      createdAt: DateTime.tryParse('${json['createdAt']}'),
    );
  }
}

/// Background queue of the photos to send.
///
/// - One upload at a time, in the order of capture: on a version in
///   "to validate", every stored photo creates the next version, so the
///   uploads must not race.
/// - Items survive an app restart (the store keeps them); an upload that was
///   running when the app stopped starts again.
/// - A network failure puts the item back to pending; after [maxAttempts] it
///   becomes failed and waits for a manual retry. A refusal by the server
///   (format, size, limit, rights...) fails at once with the server message.
/// - Cancelling removes the item (and tells a running upload to stop).
class InspectionUploadQueue extends ChangeNotifier {
  InspectionUploadQueue({
    required this.uploader,
    required InspectionStore store,
    this.maxAttempts = 4,
    this.fileExists,
    this.onItemDone,
  }) : _store = store;

  final InspectionPhotoUploader uploader;
  final InspectionStore _store;
  final int maxAttempts;

  /// Lets the queue drop items whose local file vanished (temp folder purged).
  final Future<bool> Function(String path)? fileExists;

  /// Called after a photo was stored (the screen refreshes the inspection).
  final Future<void> Function(UploadItem item, UploadOutcome outcome)?
      onItemDone;

  static const String _storeKey = 'upload_queue';

  final List<UploadItem> _items = [];
  UploadCancelToken? _runningToken;
  UploadItem? _running;
  bool _processing = false;
  bool _paused = false;

  List<UploadItem> get items => List.unmodifiable(_items);

  List<UploadItem> itemsFor(int reservationId, String type) => _items
      .where((item) => item.reservationId == reservationId && item.type == type)
      .toList(growable: false);

  /// Pictures still to send or being sent.
  int activeCount(int reservationId, String type) => itemsFor(reservationId, type)
      .where((item) => item.isActive)
      .length;

  bool hasActive(int reservationId, String type) =>
      activeCount(reservationId, type) > 0;

  /// Reads the stored items. Items that were uploading start over.
  Future<void> restore() async {
    final raw = _store.read(_storeKey);
    _items.clear();
    if (raw != null) {
      try {
        final list = jsonDecode(raw);
        if (list is List) {
          for (final entry in list) {
            final item = UploadItem.fromJson(entry);
            if (item == null || item.status == UploadStatus.done) continue;
            if (item.status == UploadStatus.uploading) {
              item.status = UploadStatus.pending;
            }
            final exists = fileExists;
            if (exists != null && !await exists(item.filePath)) continue;
            _items.add(item);
          }
        }
      } catch (e) {
        debugPrint('upload queue not readable: $e');
      }
    }
    await _persist();
    notifyListeners();
  }

  Future<void> _persist() => _store.write(
      _storeKey,
      jsonEncode(_items
          .where((item) => item.status != UploadStatus.done)
          .map((item) => item.toJson())
          .toList()));

  /// Adds a processed picture and starts sending it.
  Future<UploadItem> enqueue({
    required int reservationId,
    required String type,
    required String filePath,
    String? localId,
  }) async {
    final item = UploadItem(
      localId: localId ?? '${DateTime.now().microsecondsSinceEpoch}_${_items.length}',
      reservationId: reservationId,
      type: type,
      filePath: filePath,
    );
    _items.add(item);
    await _persist();
    notifyListeners();
    unawaited(process());
    return item;
  }

  /// Stops sending (no connection known) until [resume].
  void pause() => _paused = true;

  /// Network is back: failed-by-network items and pending ones start again.
  void resume() {
    _paused = false;
    unawaited(process());
  }

  /// Manual retry of a failed item.
  Future<void> retry(String localId) async {
    final item = _find(localId);
    if (item == null) return;
    item.status = UploadStatus.pending;
    item.attempts = 0;
    item.errorMessage = null;
    await _persist();
    notifyListeners();
    unawaited(process());
  }

  /// Removes an item; a running upload is told to stop.
  Future<void> cancel(String localId) async {
    final item = _find(localId);
    if (item == null) return;
    if (identical(item, _running)) _runningToken?.cancel();
    _items.remove(item);
    await _persist();
    notifyListeners();
  }

  /// Drops the finished items of a reservation (after the screen refreshed).
  Future<void> clearDone(int reservationId, String type) async {
    _items.removeWhere((item) =>
        item.reservationId == reservationId &&
        item.type == type &&
        item.status == UploadStatus.done);
    await _persist();
  }

  UploadItem? _find(String localId) {
    for (final item in _items) {
      if (item.localId == localId) return item;
    }
    return null;
  }

  /// Sends the pending items one after the other.
  Future<void> process() async {
    if (_processing || _paused) return;
    _processing = true;
    try {
      while (!_paused) {
        UploadItem? next;
        for (final item in _items) {
          if (item.status == UploadStatus.pending) {
            next = item;
            break;
          }
        }
        if (next == null) break;
        await _sendOne(next);
      }
    } finally {
      _processing = false;
    }
  }

  Future<void> _sendOne(UploadItem item) async {
    final exists = fileExists;
    if (exists != null && !await exists(item.filePath)) {
      _items.remove(item);
      await _persist();
      notifyListeners();
      return;
    }
    item.status = UploadStatus.uploading;
    item.attempts += 1;
    item.progress = 0;
    final token = UploadCancelToken();
    _runningToken = token;
    _running = item;
    notifyListeners();

    UploadOutcome outcome;
    try {
      outcome = await uploader.upload(
        reservationId: item.reservationId,
        type: item.type,
        filePath: item.filePath,
        cancelToken: token,
        onProgress: (value) {
          item.progress = value;
          notifyListeners();
        },
      );
    } catch (e) {
      debugPrint('upload failed: $e');
      outcome = const UploadOutcome(UploadOutcomeKind.retryable);
    }
    _running = null;
    _runningToken = null;

    // Cancelled while running: the item is already gone from the list.
    if (!_items.contains(item)) {
      notifyListeners();
      return;
    }

    switch (outcome.kind) {
      case UploadOutcomeKind.success:
        item.status = UploadStatus.done;
        item.photoId = outcome.photoId;
        item.progress = 1;
        item.errorMessage = null;
        break;
      case UploadOutcomeKind.retryable:
        if (item.attempts >= maxAttempts) {
          item.status = UploadStatus.failed;
          item.errorMessage = outcome.message;
        } else {
          item.status = UploadStatus.pending;
          item.errorMessage = outcome.message;
          // A short pause keeps a flaky network from being hammered.
          await Future<void>.delayed(retryDelay(item.attempts));
        }
        break;
      case UploadOutcomeKind.rejected:
        item.status = UploadStatus.failed;
        item.errorMessage = outcome.message;
        break;
      case UploadOutcomeKind.cancelled:
        _items.remove(item);
        break;
    }
    await _persist();
    notifyListeners();
    if (outcome.kind == UploadOutcomeKind.success && onItemDone != null) {
      await onItemDone!(item, outcome);
    }
  }

  /// Wait before trying again: 2 s, 4 s, 8 s... capped at 20 s.
  @visibleForTesting
  Duration Function(int attempts) retryDelayOverride = _defaultRetryDelay;

  Duration retryDelay(int attempts) => retryDelayOverride(attempts);

  static Duration _defaultRetryDelay(int attempts) {
    final seconds = 2 * (1 << (attempts - 1).clamp(0, 4));
    return Duration(seconds: seconds > 20 ? 20 : seconds);
  }
}
