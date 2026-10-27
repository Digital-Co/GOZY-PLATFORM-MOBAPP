import 'dart:io';
import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';

/// Rules of the photos sent with a check-in, a check-out or a dispute.
///
/// The server only accepts JPEG, PNG and WEBP and stays strict about it, so the
/// app never sends anything else: every picture (HEIC and HEIF included) is
/// converted to JPEG and compressed on the device before it leaves.
const int inspectionPhotoMaxSide = 1600;
const int inspectionPhotoQuality = 80;
const int inspectionPhotoFallbackQuality = 60;
const int inspectionPhotoMaxBytes = 8 * 1024 * 1024;
const int inspectionAttachmentMaxBytes = 5 * 1024 * 1024;
const int inspectionPhotoMaxCount = 8;

const List<String> inspectionPhotoInputExtensions = [
  'jpg',
  'jpeg',
  'png',
  'webp',
  'heic',
  'heif',
];

enum PhotoProcessingError { unsupportedFormat, tooLarge, failed }

class PhotoProcessingException implements Exception {
  const PhotoProcessingException(this.error);
  final PhotoProcessingError error;

  @override
  String toString() => 'PhotoProcessingException($error)';
}

/// Lower-case extension without the dot ("" when there is none).
String fileExtension(String path) {
  final name = path.split(RegExp(r'[\\/]')).last;
  final dot = name.lastIndexOf('.');
  if (dot < 0 || dot == name.length - 1) return '';
  return name.substring(dot + 1).toLowerCase();
}

/// True when a picture of this file name can be converted to JPEG and sent.
bool isSupportedPhotoInput(String path) =>
    inspectionPhotoInputExtensions.contains(fileExtension(path));

/// True for the documents accepted as dispute attachments (pictures or PDF).
bool isSupportedAttachmentInput(String path) =>
    isSupportedPhotoInput(path) || fileExtension(path) == 'pdf';

/// Size to give a [width] x [height] picture so that its long side is at most
/// [maxSide] (never enlarged), keeping the aspect ratio.
({int width, int height}) targetPhotoSize(
  int width,
  int height, {
  int maxSide = inspectionPhotoMaxSide,
}) {
  if (width <= 0 || height <= 0) return (width: maxSide, height: maxSide);
  final longSide = math.max(width, height);
  if (longSide <= maxSide) return (width: width, height: height);
  final scale = maxSide / longSide;
  return (
    width: math.max(1, (width * scale).round()),
    height: math.max(1, (height * scale).round()),
  );
}

/// Compresses [source] to [target] as JPEG.
typedef PhotoCompressor = Future<String?> Function(
  String source,
  String target, {
  required int width,
  required int height,
  required int quality,
});

/// Reads the pixel size of a picture without decoding all its pixels.
typedef PhotoSizeReader = Future<({int width, int height})?> Function(
    String path);

Future<String?> _defaultCompressor(
  String source,
  String target, {
  required int width,
  required int height,
  required int quality,
}) async {
  final result = await FlutterImageCompress.compressAndGetFile(
    source,
    target,
    minWidth: width,
    minHeight: height,
    quality: quality,
    format: CompressFormat.jpeg,
    keepExif: false,
    autoCorrectionAngle: true,
  );
  return result?.path;
}

Future<({int width, int height})?> _defaultSizeReader(String path) async {
  try {
    final bytes = await File(path).readAsBytes();
    final buffer = await ui.ImmutableBuffer.fromUint8List(bytes);
    final descriptor = await ui.ImageDescriptor.encoded(buffer);
    final size = (width: descriptor.width, height: descriptor.height);
    descriptor.dispose();
    buffer.dispose();
    return size;
  } catch (e) {
    debugPrint('photo size not readable: $e');
    return null;
  }
}

/// A picture ready to be uploaded.
class ProcessedPhoto {
  const ProcessedPhoto(this.path, this.bytes);
  final String path;
  final int bytes;
}

/// Converts a picked or captured picture to a JPEG of at most
/// [inspectionPhotoMaxSide] pixels on its long side, quality about 80, below
/// [inspectionPhotoMaxBytes]. A second pass with a lower quality is tried when
/// the first result is still too heavy.
Future<ProcessedPhoto> processInspectionPhoto(
  String sourcePath, {
  required String outputDirectory,
  PhotoCompressor? compressor,
  PhotoSizeReader? sizeReader,
  int maxBytes = inspectionPhotoMaxBytes,
  DateTime? now,
}) async {
  if (!isSupportedPhotoInput(sourcePath)) {
    throw const PhotoProcessingException(PhotoProcessingError.unsupportedFormat);
  }
  final compress = compressor ?? _defaultCompressor;
  final readSize = sizeReader ?? _defaultSizeReader;
  final size = await readSize(sourcePath);
  final target = targetPhotoSize(size?.width ?? 0, size?.height ?? 0);
  final stamp = (now ?? DateTime.now()).microsecondsSinceEpoch;

  for (final quality in [
    inspectionPhotoQuality,
    inspectionPhotoFallbackQuality
  ]) {
    final targetPath = '$outputDirectory/insp_${stamp}_$quality.jpg';
    String? produced;
    try {
      produced = await compress(
        sourcePath,
        targetPath,
        width: target.width,
        height: target.height,
        quality: quality,
      );
    } catch (e) {
      debugPrint('photo compression failed: $e');
      throw const PhotoProcessingException(PhotoProcessingError.failed);
    }
    if (produced == null) {
      throw const PhotoProcessingException(PhotoProcessingError.failed);
    }
    final length = await File(produced).length();
    if (length <= maxBytes) return ProcessedPhoto(produced, length);
  }
  throw const PhotoProcessingException(PhotoProcessingError.tooLarge);
}
