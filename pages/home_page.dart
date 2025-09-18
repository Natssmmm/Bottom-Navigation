import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {return Scaffold(
    appBar: AppBar(
      title: Text('Welcome Home'),
      backgroundColor: Colors.blue,
      centerTitle: true,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.flutter_dash, size: 80, color: Colors.blue),
            SizedBox(height: 20),
            Text(
                'Welcome to My Portfolio App!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Explore my projects, gallery, and contact me.'),
          ],
        ),
      ),
    );
  }
}
