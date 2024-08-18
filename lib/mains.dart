import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart'; // Needed for kReleaseMode




void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) =>  MaterialApp( 
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Flutter Application'),
          centerTitle: true,
        ),
        body: Text("Hello programmers"),
     )
      ), // Wrap your app
  ),
);


