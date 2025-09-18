import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              "Hi, I'm Nathaniel",
              style: TextStyle(fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "A passionate developer who loves building apps with flutter and exploring nex technologies.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}