import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myfoodapp/screen/SignUpScreen.dart';
import 'package:myfoodapp/screen/utils.dart';
import '../main.dart';
import '../main/Navigtion.dart';
import 'AuthPage.dart';



class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  Widget initWidget() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 280,
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
                child: TextFormField(
                  controller: emailController,
                  validator: (value){
                    if (value!.isEmpty) {
                      return 'لا يمكن ترك الخانة فارغة';
                    }if (!RegExp('^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]').hasMatch(value) ) {
                      return 'ادخل ايميل صالح';
                    }  else{
                      return null;
                    }
                  },
                  cursorColor: Color(0xffE6915D),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
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
                child: TextFormField(
                  controller: passwordController,
                  validator: (value){
                    if (value!.isEmpty) {
                      return 'لا يمكن ترك الخانة فارغة';
                    }if (value.length <6) {
                      return 'يجب ان تكون كلمة المرور اكبر من 6 خانات';
                    }  else{
                      return null;
                    }
                  },
                  cursorColor: Color(0xffE6915D),
                  textInputAction: TextInputAction.done,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.black,
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      child: Icon(_obscureText
                          ? Icons.visibility_off
                          :Icons.visibility,
                      ),
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
                  if (formkey.currentState!.validate()) {
                    logIn();
                   }
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
                  ),
                  child: Text(
                    'الدخول',
                    style: TextStyle(color: Colors.white, fontFamily: 'Cairo'),
                  ),
                ),
              ),
              OrDivider(),
              GestureDetector(
                onTap: () {
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

                  ),
                  child: Text(
                    'الدخول كضيف',
                    style: TextStyle(color: Colors.white, fontFamily: 'Cairo'),
                  ),
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
      ),
    );
  }
  Future logIn() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(child: CircularProgressIndicator()),
    );


    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);

      Utils.ShowSnackBar(e.message);
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}


class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      body:StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder:  (context, snabshot) {
            if (snabshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snabshot.hasError) {
              return Center(child: Text('حدث خطأ ما'));
            } else if (snabshot.hasData) {
              return Navigtion();
            }  else{
              return AuthPage();
            }
          }
      )
  );
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
              'او',
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








