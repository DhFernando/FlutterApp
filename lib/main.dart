import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home : Home() ,
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.cyan[600],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20,30,20,0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start ,
          
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/DSC01857.jpg'),
                radius: 70.0,
              ),
            ),
            Divider(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Name' , 
                      style: TextStyle(color: Colors.cyan , letterSpacing: 2),
                    ),
                    SizedBox(height: 10,),
                    Text('Dilshan hasitha Fernando'),
                ],),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('E-Mail' , 
                      style: TextStyle(color: Colors.cyan , letterSpacing: 2),
                    ),
                    SizedBox(height: 10,),
                    Text('dhfernando11@gmail.com'),
                ],)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Univercity' , 
                      style: TextStyle(color: Colors.cyan , letterSpacing: 2),
                    ),
                    SizedBox(height: 10,),
                    Text('University of Sabaragamuwa'),
                ],),
                SizedBox(width: 17,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Department' , 
                      style: TextStyle(color: Colors.cyan , letterSpacing: 2),
                    ),
                    SizedBox(height: 10,),
                    Text('CIS'),
                ],)
              ],
            ),
           
           
          ],        
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('Click'),
        backgroundColor: Colors.cyan[600],
      ),
    );
  }
}

