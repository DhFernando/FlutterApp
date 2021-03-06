

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    //
    super.initState();
  }

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Home"),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
             FlatButton.icon(
              onPressed: () {
               Navigator.pushNamed(context, '/location');
              },
              label: Text('Goto Location'),
              icon: Icon(Icons.my_location),
            ),
            Text('${data["time"]}'),
          ],
        ),
      ),
    );
  }
}