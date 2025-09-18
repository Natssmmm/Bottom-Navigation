import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  final List<String> images = [
    'assets/gallery1.jpg',
    'assets/gallery2.jpg',
    'assets/gallery3.jpg',
    'assets/gallery4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Gallery'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // two images per row
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(images[index], fit: BoxFit.cover),
          );
        },
      ),
    );
  }
}
