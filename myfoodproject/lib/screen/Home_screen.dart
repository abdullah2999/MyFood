import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class home_screen extends StatelessWidget {
  const home_screen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title:Text('home sweet home'),
      backgroundColor: HexColor('#E6915D'),
      elevation: 0,),
    body:Column(
      children: <Widget>[
      Text('Hello Peter',
      style: TextStyle(fontFamily: 'Cairo'),
      ),
    ],)
    );
  }
}