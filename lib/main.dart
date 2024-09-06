import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart'; // Needed for kReleaseMode




void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MaterialApp(
      useInheritedMediaQuery: true,
      home: FirstApp(),
      ), // Wrap your app
  ),
);



class FirstApp extends StatelessWidget {
  const FirstApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
      title: const Text('My First Application'),
          centerTitle: true,
          backgroundColor: Colors.lightBlue[500]
        ),
        body: Center(
          child: Text(
            'Hello Programmers',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey[600],
              fontFamily: 'IndieFlower',
            )),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.lightBlue[500],
          child: Text('Click me'),
        ),
      ) ;
  }
}



