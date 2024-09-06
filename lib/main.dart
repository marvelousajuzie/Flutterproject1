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
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Text(
              'NAME:',
              style: TextStyle(
                color: Colors.pinkAccent,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Marvelous Ajuzie',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
             SizedBox(height: 20.0,),
             Text(
              'CURRENT NINJA LEVEL:',
              style: TextStyle(
                color: Colors.pinkAccent,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '80.5',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
             SizedBox(height: 10.0,),
            Row(
              children: <Widget> [
                Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                Text(
                  'Marvelous12@gmail.com',
                  style: TextStyle(
                    color: Colors.black,
                    fontsize : 18.0,
                  ),
                ),
              ],
              )
          ],
        ),
      ),
    );
  }
}