import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/utils/inspection/inspection_i18n.dart';
import 'package:permission_handler/permission_handler.dart';

/// Minimal full-screen camera for the check-in and check-out photos. It
/// returns the path of each picture through [onCaptured] and closes with "Done".
/// A refused camera permission is handled: the screen explains it, opens the
/// settings on request, and the caller keeps its gallery option.
class InspectionCameraScreen extends StatefulWidget {
  const InspectionCameraScreen({
    super.key,
    required this.remaining,
    required this.onCaptured,
  });

  /// How many more pictures the caller accepts.
  final int remaining;
  final Future<void> Function(String path) onCaptured;

  @override
  State<InspectionCameraScreen> createState() => _InspectionCameraScreenState();
}

enum _CameraState { starting, ready, denied, unavailable }

class _InspectionCameraScreenState extends State<InspectionCameraScreen>
    with WidgetsBindingObserver {
  CameraController? _controller;
  _CameraState _state = _CameraState.starting;
  bool _goneToSettings = false;
  bool _busy = false;
  int _taken = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _start();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _controller?.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && _goneToSettings) {
      _goneToSettings = false;
      _start();
    }
  }

  Future<void> _start() async {
    setState(() => _state = _CameraState.starting);
    try {
      final cameras = await availableCameras();
      if (cameras.isEmpty) {
        if (mounted) setState(() => _state = _CameraState.unavailable);
        return;
      }
      final back = cameras.firstWhere(
        (camera) => camera.lensDirection == CameraLensDirection.back,
        orElse: () => cameras.first,
      );
      final controller = CameraController(back, ResolutionPreset.high,
          enableAudio: false);
      await controller.initialize();
      await controller.setFlashMode(FlashMode.off);
      if (!mounted) {
        await controller.dispose();
        return;
      }
      await _controller?.dispose();
      setState(() {
        _controller = controller;
        _state = _CameraState.ready;
      });
    } on CameraException catch (e) {
      debugPrint('camera error: ${e.code}');
      if (!mounted) return;
      setState(() => _state = e.code.startsWith('CameraAccess')
          ? _CameraState.denied
          : _CameraState.unavailable);
    } catch (e) {
      debugPrint('camera error: $e');
      if (mounted) setState(() => _state = _CameraState.unavailable);
    }
  }

  Future<void> _shoot() async {
    final controller = _controller;
    if (controller == null || _busy || _taken >= widget.remaining) return;
    setState(() => _busy = true);
    try {
      final file = await controller.takePicture();
      _taken += 1;
      await widget.onCaptured(file.path);
      if (_taken >= widget.remaining && mounted) Get.back();
    } catch (e) {
      debugPrint('capture failed: $e');
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(child: _body()),
            PositionedDirectional(
              top: 8,
              start: 8,
              child: IconButton(
                tooltip: inspText('insp_close'),
                icon: const Icon(Icons.close, color: Colors.white),
                onPressed: () => Get.back(),
              ),
            ),
            if (_state == _CameraState.ready)
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        inspText('insp_camera_count', {
                          'count': '$_taken',
                          'max': '${widget.remaining}'
                        }),
                        style: const TextStyle(color: Colors.white),
                      ),
                      Semantics(
                        button: true,
                        label: inspText('insp_camera_shoot'),
                        child: GestureDetector(
                          onTap: _shoot,
                          child: Container(
                            width: 68,
                            height: 68,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _busy ? Colors.white54 : Colors.white,
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () => Get.back(),
                        child: Text(inspText('insp_camera_done'),
                            style: const TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _body() {
    switch (_state) {
      case _CameraState.starting:
        return const Center(child: CircularProgressIndicator());
      case _CameraState.ready:
        final controller = _controller!;
        return Center(child: CameraPreview(controller));
      case _CameraState.denied:
        return _message(inspText('insp_camera_denied'), actionable: true);
      case _CameraState.unavailable:
        return _message(inspText('insp_camera_unavailable'));
    }
  }

  Widget _message(String text, {bool actionable = false}) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(text,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white, fontSize: 16)),
            const SizedBox(height: 16),
            if (actionable)
              ElevatedButton(
                onPressed: () async {
                  _goneToSettings = true;
                  await openAppSettings();
                },
                child: Text(inspText('insp_open_settings')),
              ),
            TextButton(
              onPressed: () => Get.back(),
              child: Text(inspText('insp_use_gallery'),
                  style: const TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
