import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart'; // Needed for kReleaseMode




void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MaterialApp(
      useInheritedMediaQuery: true,
      home: NinjaCard(),
      ), // Wrap your app
  ),
);



class NinjaCard extends StatelessWidget {
  const NinjaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
    );
  }
}