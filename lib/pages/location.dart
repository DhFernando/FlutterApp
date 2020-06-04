import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Location"),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              label: Text('Goto Home'),
              icon: Icon(Icons.home),
            )
          ],
        ),
      ),
    );
  }
}