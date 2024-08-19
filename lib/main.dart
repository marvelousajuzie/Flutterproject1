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
          title: Text('My First Flutter Application'),
          centerTitle: true,
          backgroundColor: Colors.lightBlue[500],
        ),
        body: Center(
          child: Text(
            "Hello Programmers",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.black,
              fontFamily: 'Indieflower',
            ),
            ),
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


