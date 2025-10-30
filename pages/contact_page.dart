import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Me'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Your Name'),
                validator: (value) =>
                value!.isEmpty ? 'Please enter your name' : null,
              ),

              TextFormField(

                decoration: InputDecoration(labelText: 'Your Email'),

                validator: (value) =>

                value!.isEmpty ? 'Please enter your email' : null,

              ),

              TextFormField(

                decoration: InputDecoration(labelText: 'Message'),

                maxLines: 3,

                validator: (value) =>

                value!.isEmpty ? 'Please enter your message' : null,

              ),

              SizedBox(height: 20),

              ElevatedButton(

                onPressed: () {

                  if (_formKey.currentState!.validate()) {

                    ScaffoldMessenger.of(context).showSnackBar(

                      SnackBar(content: Text('Message Sent!')),

                    );

                  }

                },

                child: Text('Send'),

              ),

            ],

          ),

        ),

      ),

    );

  }

}
