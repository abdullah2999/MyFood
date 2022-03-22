import 'package:flutter/material.dart';
import 'package:myfoodapp/screen/LoginScreen.dart';
import 'package:myfoodapp/screen/SignUpScreen.dart';


class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) => isLogin
      ? LoginScreen()
      : SignUpScreen();
  void toggle() => setState(() => isLogin = !isLogin );
}
