import 'package:flutter/material.dart';
import '../services/world_time.dart';
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
   
   String time = 'loading';
    setupWorldTime() async{
      WorldTime instance = WorldTime(flag: 'germany.png', location: 'Berlin' , url: 'Europe/Berlin' );
      await instance.getTime();

      Navigator.pushReplacementNamed(context, '/home' , arguments: {
        'location' : instance.location,
        'flag' : instance.flag,
        'time' : instance.time
      });

      setState(() {
       time = instance.time; 
      });
    }

    @override
    void initState()  {

      setupWorldTime(); 

      super.initState();
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
        child: Column(
          children: <Widget>[
            Text('$time'),
            // Text('${fdata}')
          ],
        ),
      ),
    );
  }
}