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



class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Center(
              child: CircleAvatar(
              backgroundImage: AssetImage('assets/marvel.jpg'),
              radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.pinkAccent,
            ),
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
              '$ninjaLevel',
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
                 SizedBox(width: 10.0,),
                Text(
                  'Marvelous12@gmail.com',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
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