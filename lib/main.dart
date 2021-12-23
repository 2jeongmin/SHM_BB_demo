import 'dart:io';
import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'pages.dart';
import 'camera_page.dart';


void main() async {
  // Ensure that plugin services are initialized so that `availableCameras()`
  // can be called before `runApp()`
  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  final firstCamera = cameras.first;


  runApp(WidgetDemo(camera: firstCamera));
} 

class WidgetDemo extends StatefulWidget {
  const WidgetDemo({
    Key? key,
    required this.camera,
  }) : super(key: key);

  final CameraDescription camera;
  @override
  State<StatefulWidget> createState() => WidgetDemoState();
}

class WidgetDemoState extends State<WidgetDemo> {
  int _curIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SHM_BB Demo'),
        ),
        body: getPage(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _curIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 30,
                color: _curIndex == 0 ? Colors.blue : Colors.black54,
              ),
              title: Text(
                "Settings",
                style: TextStyle(
                    fontSize: 15,
                    color: _curIndex == 0 ? Colors.blue : Colors.black54),
              ),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(
                Icons.visibility,
                size: 30,
                color: _curIndex == 1 ? Colors.blue : Colors.black54,
              ),
              title: Text(
                "Detection",
                style: TextStyle(
                    fontSize: 15,
                    color: _curIndex == 1 ? Colors.blue : Colors.black54),
              ),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(
                Icons.settings_ethernet,
                size: 30,
                color: _curIndex == 2 ? Colors.blue : Colors.black54,
              ),
              title: Text(
                "Measurement",
                style: TextStyle(
                    fontSize: 15,
                    color: _curIndex == 2 ? Colors.blue : Colors.black54),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget? getPage() {
    Widget? page;
    switch (_curIndex) {
      case 0:
        page = page1();
        break;
      case 1:
        page = TakePictureScreen(camera: widget.camera,);
        break;
      case 2:
        page = page3();
        break;
    }
    return page;
  }
}
