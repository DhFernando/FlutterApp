import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'dart:convert';
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
   getTime() async{
    // await Future.delayed(Duration(seconds : 3) , () {
    //     print('await function printed');
    //   });

    // make the request
    Response response = await get('http://worldtimeapi.org/api/timezone/Europe/London');
    Map data = jsonDecode(response.body);

    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);

    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));

    print(now);
    }

    // Object fdata ; 

    @override
    void initState()  {

      getTime(); 

      super.initState();
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
        child: Column(
          children: <Widget>[
            Text('loading'),
            // Text('${fdata}')
          ],
        ),
      ),
    );
  }
}