import 'package:flutter/material.dart';
import 'package:myfoodapp/screen/SignUpScreen.dart';

import '../main/Navigtion.dart';



class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(90)),
                gradient: LinearGradient(
                  colors: [(new Color(0xffffffff)), (new Color(0xffffffff))],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Image.asset('images/اكلتي.png'),
                      height: 90,
                      width: 90,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 35, bottom: 0),
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 0),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Color(0xffE6915D),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.black,
                  ),
                  hintText: 'البريد الالكتروني',
                  hintStyle: TextStyle(
                      fontFamily: 'Cairo'),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 30),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Color(0xffE6915D),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: Colors.black,
                  ),
                  hintText: 'كلمة المرور ',
                  hintStyle: TextStyle(
                    fontFamily: 'Cairo'),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, right: 40),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: Text(
                  "نسيت كلمة المرور ؟",
                  style: TextStyle(
                    fontFamily: 'Cairo',
                  ),
                ),
                onTap: () {},
              ),
            ),
            GestureDetector(
              onTap: () {
                /* write Your onClick code here*/
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Navigtion()));
              },
              child: Container(
                margin: EdgeInsets.only(left: 120, right: 120, top: 28),
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [(new Color(0xffE6915D)), (new Color(0xffE6915D))],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffE6915D),
                    )
                  ],
                ),
                child: Text(
                  'الدخول',
                  style: TextStyle(color: Colors.white, fontFamily: 'Cairo'),
                ),
              ),
            ),
            OrDivider(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [
                  GestureDetector(
                    onTap: () => print('Login with apple'),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow:[
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 6.0,
                          ),
                        ],
                        image: DecorationImage(image:AssetImage('images/apple.png')),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => print('Login with facebook'),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow:[
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 6.0,
                          ),
                        ],
                        image: DecorationImage(image:AssetImage('images/facebook (1).png')),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => print('Login with google'),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow:[
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 6.0,
                          ),
                        ],
                        image: DecorationImage(image:AssetImage('images/google (1).png')),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(' ليس لديك حساب؟ '),
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()))
                    },
                    child: Text(
                      'سجل الان',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        color: Color(0xffE6915D),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: <Widget>[
          bulidDivider(),
          Container(
            padding: const EdgeInsets.all(15),
            child: Text(
              'او استخدم',
              style: TextStyle(
                fontFamily: 'Cairo',
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          bulidDivider(),
        ],
      ),
    );
  }
}

Expanded bulidDivider() {
  return Expanded(
    child: Divider(
      color: Colors.black,
      height: 1.5,
    ),
  );
}
