import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  
  getData() async{
    await Future.delayed(Duration(seconds : 3) , () {
      print('await function printed');
    });
  }

  @override
  void initState() {
    // TODO: implement initState

getData();

    super.initState();
  }

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