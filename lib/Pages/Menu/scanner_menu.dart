// ignore_for_file: use_build_context_synchronously, prefer_const_constructors, avoid_print

import 'package:echo_cash/Pages/Component/menu_header.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:path/path.dart';

class ScannerMenu extends StatelessWidget {
  const ScannerMenu({super.key});

  Future<List<CameraDescription>> _getCameras() async {
    WidgetsFlutterBinding.ensureInitialized();
    return await availableCameras();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CameraDescription>>(
      future: _getCameras(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            return Scanner(cameras: snapshot.data!);
          } else {
            return const Center(child: Text('No cameras available'));
          }
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

class Scanner extends StatefulWidget {
  final List<CameraDescription> cameras;
  const Scanner({Key? key, required this.cameras}) : super(key: key);

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.cameras[0],
      ResolutionPreset.medium,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: Column(
        children: [
          Container(
              color: Color(0xFF6482AD),
              child: MenuHeader(
                  text: "Camera", iconData: Icons.camera_alt_rounded)),
          FutureBuilder<void>(
            future: _initializeControllerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return CameraPreview(_controller);
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff6482AD),
        onPressed: () async {},
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}
