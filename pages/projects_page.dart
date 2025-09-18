import 'package:flutter/material.dart';

class ProjectPage extends StatelessWidget{
  final List <String> projects = [
    "Portfolio Website",
    "E-commerce App",
    "Chat Application",
    "Task Manager",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Projects'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.work, color: Colors.blue),
              title: Text(projects[index]),
              subtitle: Text("Project description goes here."),
            ),
          );
        },
      ),
    );
  }
}