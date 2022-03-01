import 'package:flutter/material.dart';
import 'package:myfoodapp/main/Navigtion.dart';
import 'LoginScreen.dart';


class SignUpScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => IniState();
}

class IniState extends State<SignUpScreen> {
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
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
                gradient: LinearGradient(
                  colors: [(new Color(0xffffffff)),  (new Color(0xffffffff))],
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
                      margin: EdgeInsets.only(top: 40),
                      child: Image.asset('images/اكلتي.png'),
                      height: 90,
                      width: 90,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 25, bottom: 10),
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'انشاء حساب',
                        style: TextStyle(
                          fontFamily:'Cairo',
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
              margin: EdgeInsets.only(left: 20, right: 20, top: 25),
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
              margin: EdgeInsets.only(left: 20, right: 20, top: 25),
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
                  hintText: 'اعادة كلمة المرور ',
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
            GestureDetector(
              onTap: () {
                /* write Your onClick code here*/
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Navigtion()));
              },
              child: Container(
                margin: EdgeInsets.only(left: 120, right: 120, top:  35),
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [(new Color(0xffE6915D)), (new Color(0xffE6915D))],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [BoxShadow(
                    offset: Offset (0, 10),
                    blurRadius: 20,
                    color: Color(0xffE6915D),
                  )],
                ),
                child:Text(' تسجيل',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Cairo'
                  ),
                ) ,
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
          ],
        ),
      ),
    );
  }
}


class OrDivider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: <Widget> [
          bulidDivider(),
          Container(
            padding: const EdgeInsets.all(20),
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