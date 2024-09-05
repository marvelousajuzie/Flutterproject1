import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart'; // Needed for kReleaseMode




void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) =>  MaterialApp(
      useInheritedMediaQuery: true,
      home: Scaffold(
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
              letterSpacing: 4.0,
              color: Colors.grey[600],
            )),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text('Click'),
          backgroundColor: Colors.lightBlue[500],
        ),
      )
      ), // Wrap your app
  ),
);


