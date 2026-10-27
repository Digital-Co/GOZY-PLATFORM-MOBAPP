import 'dart:convert';

import 'package:get_secure_storage/get_secure_storage.dart';
import 'package:gozy/constant.dart';

/// Small key/value storage used by the upload queue and the local drafts.
abstract class InspectionStore {
  String? read(String key);
  Future<void> write(String key, String? value);
}

/// In-memory store (unit tests, or when no storage is available).
class MemoryInspectionStore implements InspectionStore {
  final Map<String, String> data = {};

  @override
  String? read(String key) => data[key];

  @override
  Future<void> write(String key, String? value) async {
    if (value == null) {
      data.remove(key);
    } else {
      data[key] = value;
    }
  }
}

/// Persistent store backed by the secure storage the app already uses for its
/// preferences (GetSecureStorage), in a dedicated container.
class SecureInspectionStore implements InspectionStore {
  SecureInspectionStore._(this._box);

  static const String _container = '${APP_NAME}Inspection';

  /// Opens (and initialises on first use) the dedicated container.
  static Future<SecureInspectionStore> open() async {
    await GetSecureStorage.init(container: _container);
    return SecureInspectionStore._(GetSecureStorage(container: _container));
  }

  final GetSecureStorage _box;

  @override
  String? read(String key) => _box.read(key);

  @override
  Future<void> write(String key, String? value) async {
    if (value == null) {
      await _box.remove(key);
    } else {
      await _box.write(key, value);
    }
  }
}

/// Local copy of a form that was not sent yet, kept per user, reservation and
/// type. It only applies while the server still has the version it was typed
/// on: the server always wins.
class LocalInspectionDraft {
  const LocalInspectionDraft({
    required this.baseVersion,
    required this.fields,
    required this.savedAt,
  });

  final int baseVersion;
  final Map<String, dynamic> fields;
  final DateTime savedAt;

  Map<String, dynamic> toJson() => {
        'baseVersion': baseVersion,
        'fields': fields,
        'savedAt': savedAt.toIso8601String(),
      };

  static LocalInspectionDraft? fromJson(Object? json) {
    if (json is! Map) return null;
    final fields = json['fields'];
    final version = json['baseVersion'];
    if (fields is! Map || version is! int) return null;
    return LocalInspectionDraft(
      baseVersion: version,
      fields: Map<String, dynamic>.from(fields),
      savedAt: DateTime.tryParse('${json['savedAt']}') ?? DateTime.now(),
    );
  }
}

class LocalInspectionDraftStore {
  LocalInspectionDraftStore(this._store);
  final InspectionStore _store;

  String _key(String userId, int reservationId, String type) =>
      'draft_${userId}_${reservationId}_$type';

  Future<void> save(String userId, int reservationId, String type,
      LocalInspectionDraft draft) {
    return _store.write(
        _key(userId, reservationId, type), jsonEncode(draft.toJson()));
  }

  /// The saved draft, or null when there is none or when the server moved to
  /// another version since (then the draft is dropped).
  Future<LocalInspectionDraft?> load(
      String userId, int reservationId, String type,
      {required int serverVersion}) async {
    final raw = _store.read(_key(userId, reservationId, type));
    if (raw == null) return null;
    try {
      final draft = LocalInspectionDraft.fromJson(jsonDecode(raw));
      if (draft == null || draft.baseVersion != serverVersion) {
        await clear(userId, reservationId, type);
        return null;
      }
      return draft;
    } catch (_) {
      await clear(userId, reservationId, type);
      return null;
    }
  }

  Future<void> clear(String userId, int reservationId, String type) =>
      _store.write(_key(userId, reservationId, type), null);
}
