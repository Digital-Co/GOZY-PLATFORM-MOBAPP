import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:gozy/pref/app_preference.dart';
import 'package:gozy/utils/inspection/inspection_http.dart';
import 'package:gozy/utils/inspection/inspection_queue_store.dart';
import 'package:gozy/utils/inspection/inspection_upload_queue.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

/// App-wide singletons of the check-in / check-out feature: the persistent
/// store, the photo upload queue (which keeps working when a screen closes)
/// and the local drafts.
class InspectionServices {
  InspectionServices._();
  static final InspectionServices instance = InspectionServices._();

  InspectionStore? _store;
  InspectionUploadQueue? _queue;
  LocalInspectionDraftStore? _drafts;
  StreamSubscription<InternetStatus>? _connection;
  Future<void>? _starting;

  final StreamController<UploadItem> _done = StreamController.broadcast();

  /// Derived status of reservations refreshed after a check-in / check-out
  /// screen closed (the lists show it before their next reload).
  final RxMap<int, String> statuses = <int, String>{}.obs;

  /// A photo was stored on the server (the open screen refreshes itself).
  Stream<UploadItem> get onPhotoStored => _done.stream;

  bool get isReady => _queue != null;
  InspectionUploadQueue get queue => _queue!;
  LocalInspectionDraftStore get drafts => _drafts!;
  InspectionPhotoUploaderHolder get uploader => InspectionPhotoUploaderHolder(queue.uploader);

  /// Opens the storage, restores the queue and follows the connection. Safe
  /// to call many times.
  Future<void> ensureStarted() => _starting ??= _start();

  Future<void> _start() async {
    try {
      _store = await SecureInspectionStore.open();
    } catch (e) {
      debugPrint('inspection storage unavailable, memory only: $e');
      _store = MemoryInspectionStore();
    }
    _drafts = LocalInspectionDraftStore(_store!);
    final AppPreference preference = Get.find();
    _queue = InspectionUploadQueue(
      uploader: HttpInspectionUploader(accessToken: () => preference.accessToken),
      store: _store!,
      fileExists: (path) => File(path).exists(),
      onItemDone: (item, outcome) async => _done.add(item),
    );
    await _queue!.restore();
    _connection = InternetConnection().onStatusChange.listen((status) {
      if (status == InternetStatus.connected) {
        _queue!.resume();
      } else {
        _queue!.pause();
      }
    });
    _queue!.process();
  }

  @visibleForTesting
  Future<void> dispose() async {
    await _connection?.cancel();
  }
}

/// Small wrapper so screens can remove stored photos without knowing HTTP.
class InspectionPhotoUploaderHolder {
  InspectionPhotoUploaderHolder(this._uploader);
  final InspectionPhotoUploader _uploader;
  Future<UploadOutcome> remove(int photoId) => _uploader.remove(photoId);
}
