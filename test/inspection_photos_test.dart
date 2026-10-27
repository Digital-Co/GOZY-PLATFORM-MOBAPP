import 'dart:async';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:gozy/utils/inspection/inspection_http.dart';
import 'package:gozy/utils/inspection/inspection_photo_processor.dart';
import 'package:gozy/utils/inspection/inspection_queue_store.dart';
import 'package:gozy/utils/inspection/inspection_upload_queue.dart';

class _FakeUploader implements InspectionPhotoUploader {
  _FakeUploader(this.script);

  /// One outcome per call, in order (the last one repeats).
  final List<UploadOutcome> script;
  final List<String> uploaded = [];
  final List<int> removed = [];
  int calls = 0;
  Completer<void>? gate;

  @override
  Future<UploadOutcome> upload({
    required int reservationId,
    required String type,
    required String filePath,
    void Function(double progress)? onProgress,
    UploadCancelToken? cancelToken,
  }) async {
    final index = calls < script.length ? calls : script.length - 1;
    calls += 1;
    if (gate != null) await gate!.future;
    uploaded.add(filePath);
    if (cancelToken?.isCancelled ?? false) {
      return const UploadOutcome(UploadOutcomeKind.cancelled);
    }
    return script[index];
  }

  @override
  Future<UploadOutcome> remove(int photoId) async {
    removed.add(photoId);
    return const UploadOutcome(UploadOutcomeKind.success);
  }
}

const _ok = UploadOutcome(UploadOutcomeKind.success, photoId: 11, version: 2);
const _net = UploadOutcome(UploadOutcomeKind.retryable);

InspectionUploadQueue _queue(
  _FakeUploader uploader,
  MemoryInspectionStore store, {
  int maxAttempts = 3,
  Future<void> Function(UploadItem, UploadOutcome)? onItemDone,
}) {
  final queue = InspectionUploadQueue(
    uploader: uploader,
    store: store,
    maxAttempts: maxAttempts,
    onItemDone: onItemDone,
  );
  queue.retryDelayOverride = (_) => Duration.zero;
  return queue;
}

Future<void> _settle() => Future<void>.delayed(const Duration(milliseconds: 30));

void main() {
  group('photo format and size', () {
    test('only JPEG, PNG, WEBP, HEIC and HEIF pictures are accepted as input', () {
      for (final name in [
        'a.jpg', 'a.JPEG', '/x/y/a.png', 'a.webp', 'IMG_1.HEIC', 'a.heif'
      ]) {
        expect(isSupportedPhotoInput(name), isTrue, reason: name);
      }
      for (final name in ['a.gif', 'a.bmp', 'a.pdf', 'a', 'a.', 'a.tiff']) {
        expect(isSupportedPhotoInput(name), isFalse, reason: name);
      }
    });

    test('PDF is only accepted as a dispute attachment', () {
      expect(isSupportedAttachmentInput('doc.pdf'), isTrue);
      expect(isSupportedPhotoInput('doc.pdf'), isFalse);
      expect(isSupportedAttachmentInput('doc.docx'), isFalse);
    });

    test('long side is brought to 1600 px, never enlarged, ratio kept', () {
      expect(targetPhotoSize(4000, 3000), (width: 1600, height: 1200));
      expect(targetPhotoSize(3000, 4000), (width: 1200, height: 1600));
      expect(targetPhotoSize(1200, 800), (width: 1200, height: 800));
      expect(targetPhotoSize(1600, 1600), (width: 1600, height: 1600));
      expect(targetPhotoSize(0, 0), (width: 1600, height: 1600));
    });

    test('limits match the server rules', () {
      expect(inspectionPhotoMaxBytes, 8 * 1024 * 1024);
      expect(inspectionAttachmentMaxBytes, 5 * 1024 * 1024);
      expect(inspectionPhotoMaxCount, 8);
      expect(inspectionPhotoMaxSide, 1600);
      expect(inspectionPhotoQuality, 80);
    });
  });

  group('processInspectionPhoto', () {
    late Directory dir;
    setUp(() => dir = Directory.systemTemp.createTempSync('insp_test'));
    tearDown(() => dir.deleteSync(recursive: true));

    Future<({int width, int height})?> size(String _) async =>
        (width: 4032, height: 3024);

    test('converts HEIC to a JPEG file of 1600 px at quality 80', () async {
      final calls = <Map<String, Object>>[];
      final result = await processInspectionPhoto(
        'IMG_0001.HEIC',
        outputDirectory: dir.path,
        sizeReader: size,
        compressor: (src, target,
            {required width, required height, required quality}) async {
          calls.add({'w': width, 'h': height, 'q': quality, 'target': target});
          File(target).writeAsBytesSync(List.filled(500, 1));
          return target;
        },
      );
      expect(calls, hasLength(1));
      expect(calls.single['w'], 1600);
      expect(calls.single['h'], 1200);
      expect(calls.single['q'], 80);
      expect(result.path.endsWith('.jpg'), isTrue);
      expect(result.bytes, 500);
    });

    test('retries once with a lower quality when the file is too heavy', () async {
      final qualities = <int>[];
      final result = await processInspectionPhoto(
        'a.png',
        outputDirectory: dir.path,
        sizeReader: size,
        maxBytes: 1000,
        compressor: (src, target,
            {required width, required height, required quality}) async {
          qualities.add(quality);
          File(target).writeAsBytesSync(List.filled(quality == 80 ? 2000 : 800, 1));
          return target;
        },
      );
      expect(qualities, [80, 60]);
      expect(result.bytes, 800);
    });

    test('fails when even the lower quality is above 8 MB', () async {
      await expectLater(
        processInspectionPhoto(
          'a.jpg',
          outputDirectory: dir.path,
          sizeReader: size,
          maxBytes: 100,
          compressor: (src, target,
              {required width, required height, required quality}) async {
            File(target).writeAsBytesSync(List.filled(500, 1));
            return target;
          },
        ),
        throwsA(isA<PhotoProcessingException>()
            .having((e) => e.error, 'error', PhotoProcessingError.tooLarge)),
      );
    });

    test('refuses a format the server does not accept, without compressing', () async {
      var compressed = false;
      await expectLater(
        processInspectionPhoto(
          'animation.gif',
          outputDirectory: dir.path,
          sizeReader: size,
          compressor: (src, target,
              {required width, required height, required quality}) async {
            compressed = true;
            return target;
          },
        ),
        throwsA(isA<PhotoProcessingException>().having(
            (e) => e.error, 'error', PhotoProcessingError.unsupportedFormat)),
      );
      expect(compressed, isFalse);
    });

    test('a compressor that returns nothing is a failure', () async {
      await expectLater(
        processInspectionPhoto(
          'a.jpg',
          outputDirectory: dir.path,
          sizeReader: size,
          compressor: (src, target,
                  {required width, required height, required quality}) async =>
              null,
        ),
        throwsA(isA<PhotoProcessingException>()
            .having((e) => e.error, 'error', PhotoProcessingError.failed)),
      );
    });
  });

  group('upload server answers', () {
    test('200 with an id is a success carrying the new version', () {
      final outcome = parsePhotoResponse(
          200, '{"status":200,"id":42,"version":3,"thumbUrl":"x"}');
      expect(outcome.kind, UploadOutcomeKind.success);
      expect(outcome.photoId, 42);
      expect(outcome.version, 3);
    });

    test('limit, size, format and rights are refused for good with the server message', () {
      for (final code in [400, 401, 403, 404, 409, 413, 415, 503]) {
        final outcome = parsePhotoResponse(
            code, '{"status":$code,"errorMessage":"Texte serveur"}');
        expect(outcome.kind, UploadOutcomeKind.rejected, reason: '$code');
        expect(outcome.message, 'Texte serveur');
        expect(outcome.httpStatus, code);
      }
    });

    test('429 and 5xx (except 503) are retried later', () {
      for (final code in [429, 500, 502, 504]) {
        expect(parsePhotoResponse(code, '{}').kind, UploadOutcomeKind.retryable,
            reason: '$code');
      }
    });

    test('an unreadable body does not crash', () {
      expect(parsePhotoResponse(502, '<html>').kind, UploadOutcomeKind.retryable);
      expect(parsePhotoResponse(400, 'oops').kind, UploadOutcomeKind.rejected);
    });

    test('photos are read with the auth header and never through a disk path', () {
      expect(inspectionPhotoHeaders('jwt'), {'auth': 'jwt'});
      expect(inspectionPhotoUrl(7), endsWith('/inspection/photo/7'));
      expect(inspectionPhotoUrl(7, thumbnail: true),
          endsWith('/inspection/photo/7?size=thumb'));
      expect(inspectionUploadUrl(), endsWith('/inspection/photos'));
      expect(inspectionRemoveUrl(), endsWith('/inspection/photos/remove'));
    });
  });

  group('upload queue', () {
    test('sends the pictures one at a time, in order', () async {
      final uploader = _FakeUploader([_ok]);
      final queue = _queue(uploader, MemoryInspectionStore());
      await queue.enqueue(reservationId: 1, type: 'checkin', filePath: 'a.jpg');
      await queue.enqueue(reservationId: 1, type: 'checkin', filePath: 'b.jpg');
      await queue.enqueue(reservationId: 1, type: 'checkin', filePath: 'c.jpg');
      await _settle();
      expect(uploader.uploaded, ['a.jpg', 'b.jpg', 'c.jpg']);
      expect(queue.items.every((i) => i.status == UploadStatus.done), isTrue);
      expect(queue.hasActive(1, 'checkin'), isFalse);
    });

    test('a network failure is retried and then succeeds (resume after a cut)', () async {
      final uploader = _FakeUploader([_net, _net, _ok]);
      final queue = _queue(uploader, MemoryInspectionStore());
      await queue.enqueue(reservationId: 1, type: 'checkin', filePath: 'a.jpg');
      await _settle();
      expect(uploader.calls, 3);
      expect(queue.items.single.status, UploadStatus.done);
      expect(queue.items.single.photoId, 11);
    });

    test('after the maximum attempts the item fails and waits for a manual retry', () async {
      final uploader = _FakeUploader([_net]);
      final queue = _queue(uploader, MemoryInspectionStore(), maxAttempts: 3);
      await queue.enqueue(reservationId: 1, type: 'checkin', filePath: 'a.jpg');
      await _settle();
      expect(uploader.calls, 3);
      expect(queue.items.single.status, UploadStatus.failed);

      uploader.script
        ..clear()
        ..add(_ok);
      uploader.calls = 0;
      await queue.retry(queue.items.single.localId);
      await _settle();
      expect(queue.items.single.status, UploadStatus.done);
    });

    test('a refusal by the server fails at once and keeps its message', () async {
      final uploader = _FakeUploader([
        const UploadOutcome(UploadOutcomeKind.rejected,
            httpStatus: 413, message: 'Trop lourd')
      ]);
      final queue = _queue(uploader, MemoryInspectionStore());
      await queue.enqueue(reservationId: 1, type: 'checkin', filePath: 'a.jpg');
      await _settle();
      expect(uploader.calls, 1);
      expect(queue.items.single.status, UploadStatus.failed);
      expect(queue.items.single.errorMessage, 'Trop lourd');
    });

    test('cancelling a waiting item removes it and it is never sent', () async {
      final uploader = _FakeUploader([_ok]);
      uploader.gate = Completer<void>();
      final queue = _queue(uploader, MemoryInspectionStore());
      await queue.enqueue(reservationId: 1, type: 'checkin', filePath: 'a.jpg');
      final second = await queue.enqueue(
          reservationId: 1, type: 'checkin', filePath: 'b.jpg');
      await _settle();
      await queue.cancel(second.localId);
      uploader.gate!.complete();
      await _settle();
      expect(uploader.uploaded, ['a.jpg']);
      expect(queue.items.map((i) => i.filePath), ['a.jpg']);
    });

    test('cancelling the running upload drops the item', () async {
      final uploader = _FakeUploader([_ok]);
      uploader.gate = Completer<void>();
      final queue = _queue(uploader, MemoryInspectionStore());
      final item = await queue.enqueue(
          reservationId: 1, type: 'checkin', filePath: 'a.jpg');
      await _settle();
      await queue.cancel(item.localId);
      uploader.gate!.complete();
      await _settle();
      expect(queue.items, isEmpty);
    });

    test('pause holds the queue, resume sends again', () async {
      final uploader = _FakeUploader([_ok]);
      final queue = _queue(uploader, MemoryInspectionStore());
      queue.pause();
      await queue.enqueue(reservationId: 1, type: 'checkout', filePath: 'a.jpg');
      await _settle();
      expect(uploader.calls, 0);
      queue.resume();
      await _settle();
      expect(uploader.calls, 1);
    });

    test('items survive an app restart and the interrupted one starts again', () async {
      final store = MemoryInspectionStore();
      final first = _queue(_FakeUploader([_net]), store, maxAttempts: 10);
      first.pause();
      await first.enqueue(reservationId: 5, type: 'checkin', filePath: 'a.jpg');
      first.items.single.status = UploadStatus.uploading;
      await first.enqueue(reservationId: 5, type: 'checkin', filePath: 'b.jpg');

      final uploader = _FakeUploader([_ok]);
      final second = _queue(uploader, store);
      await second.restore();
      expect(second.items.map((i) => i.filePath), ['a.jpg', 'b.jpg']);
      expect(second.items.first.status, UploadStatus.pending);
      second.resume();
      await _settle();
      expect(uploader.uploaded, ['a.jpg', 'b.jpg']);
    });

    test('a picture purged from the temp folder is dropped at restore', () async {
      final store = MemoryInspectionStore();
      final first = _queue(_FakeUploader([_ok]), store);
      first.pause();
      await first.enqueue(reservationId: 5, type: 'checkin', filePath: 'gone.jpg');
      final second = InspectionUploadQueue(
        uploader: _FakeUploader([_ok]),
        store: store,
        fileExists: (path) async => false,
      );
      await second.restore();
      expect(second.items, isEmpty);
    });

    test('reports each stored picture so the screen can refresh', () async {
      final done = <int?>[];
      final queue = _queue(_FakeUploader([_ok]), MemoryInspectionStore(),
          onItemDone: (item, outcome) async => done.add(outcome.version));
      await queue.enqueue(reservationId: 1, type: 'checkin', filePath: 'a.jpg');
      await _settle();
      expect(done, [2]);
    });

    test('items are grouped by reservation and type', () async {
      final queue = _queue(_FakeUploader([_ok]), MemoryInspectionStore());
      queue.pause();
      await queue.enqueue(reservationId: 1, type: 'checkin', filePath: 'a.jpg');
      await queue.enqueue(reservationId: 1, type: 'checkout', filePath: 'b.jpg');
      await queue.enqueue(reservationId: 2, type: 'checkin', filePath: 'c.jpg');
      expect(queue.activeCount(1, 'checkin'), 1);
      expect(queue.activeCount(1, 'checkout'), 1);
      expect(queue.activeCount(2, 'checkin'), 1);
      expect(queue.activeCount(2, 'checkout'), 0);
    });
  });

  group('local draft', () {
    test('is restored while the server is still on the same version', () async {
      final drafts = LocalInspectionDraftStore(MemoryInspectionStore());
      await drafts.save('u1', 9, 'checkin', LocalInspectionDraft(
          baseVersion: 2, fields: {'comment': 'abc'}, savedAt: DateTime(2026, 10, 27)));
      final loaded = await drafts.load('u1', 9, 'checkin', serverVersion: 2);
      expect(loaded?.fields['comment'], 'abc');
    });

    test('is dropped when the server moved on: the server wins', () async {
      final store = MemoryInspectionStore();
      final drafts = LocalInspectionDraftStore(store);
      await drafts.save('u1', 9, 'checkin', LocalInspectionDraft(
          baseVersion: 2, fields: {'comment': 'abc'}, savedAt: DateTime(2026, 10, 27)));
      expect(await drafts.load('u1', 9, 'checkin', serverVersion: 3), isNull);
      expect(await drafts.load('u1', 9, 'checkin', serverVersion: 2), isNull);
    });

    test('is private to a user and a reservation', () async {
      final drafts = LocalInspectionDraftStore(MemoryInspectionStore());
      await drafts.save('u1', 9, 'checkin', LocalInspectionDraft(
          baseVersion: 1, fields: {'a': 1}, savedAt: DateTime(2026, 10, 27)));
      expect(await drafts.load('u2', 9, 'checkin', serverVersion: 1), isNull);
      expect(await drafts.load('u1', 10, 'checkin', serverVersion: 1), isNull);
      expect(await drafts.load('u1', 9, 'checkout', serverVersion: 1), isNull);
    });
  });
}
