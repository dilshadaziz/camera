
import 'package:camera/camera.dart';
import 'package:cameraapp/screens/camera_screen.dart';
import 'package:flutter/material.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure plugin services are initialized
  final cameras = await availableCameras(); // Get list of available cameras
  runApp( MyApp(cameras: cameras));
}

class MyApp extends StatelessWidget {
  final List<CameraDescription> cameras;
  const MyApp({Key? key,required this.cameras}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Camera App',
      home: CameraScreen(cameras: cameras),
    );
  }
}