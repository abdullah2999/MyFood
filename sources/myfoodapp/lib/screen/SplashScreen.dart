import 'dart:async';
import 'LoginScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => IniState();
}  

class IniState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    statTimer();
  }

  statTimer() async {
    var duration = Duration(seconds: 3);
    return new Timer(duration, loginRoute);
  }

  loginRoute() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => MainPage(),
    ));
  }

  @override
  Widget build(BuildContext context) {
     return initWidget();
  }
  
  
  
  initWidget() {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: new Color(0xffE6915D),
              gradient: LinearGradient(
                colors: [(new Color(0xffE6915D)),  (new Color(0xffE6915D))],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
            ),
          ),
          Center(
            child: Container(
              child: Image.asset('images/اكلتي.png'),
            ),
          ),
        ],
      ),
    );
  }
}