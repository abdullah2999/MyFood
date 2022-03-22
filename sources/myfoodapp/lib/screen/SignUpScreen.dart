import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myfoodapp/screen/utils.dart';
import '../main.dart';
import 'LoginScreen.dart';


class SignUpScreen extends StatefulWidget{
  @override
  const SignUpScreen ({Key? key}) : super(key: key);
  State<StatefulWidget> createState() => IniState();
}

class IniState extends State<SignUpScreen> {
  final formkey = GlobalKey<FormState>();
  bool _1obscureText = true;
  bool _2obscureText = true;
  String _password = '';
  String _confirmpassword = '';

  final emailController1 = TextEditingController();
  final passwordController1 = TextEditingController();
  final repasswordController1 = TextEditingController();


  @override
  void dispose() {
    emailController1.dispose();
    passwordController1.dispose();
    repasswordController1.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return initWidget();
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
                margin: EdgeInsets.only(left: 20, right: 20, top:0),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                child: TextFormField(
                  controller: emailController1,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
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
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                child: TextFormField(
                  controller: passwordController1,
                  textInputAction: TextInputAction.next,
                  validator: (value){
                    if (value!.isEmpty) {
                      return 'لا يمكن ترك الخانة فارغة';
                    }if (value.length <6) {
                      return 'يجب ان تكون كلمة المرور اكبر من 6 خانات';
                    }
                    return null;
                  },
                  onChanged: (value) => _password = value,
                  cursorColor: Color(0xffE6915D),
                  obscureText: _1obscureText,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.black,
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _1obscureText = !_1obscureText;
                        });
                      },
                      child: Icon(_1obscureText
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
                margin: EdgeInsets.only(left: 20, right: 20, top: 25),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                child: TextFormField(
                  controller: repasswordController1,
                  textInputAction: TextInputAction.done,
                  validator: (value){
                    if (value!.isEmpty) {
                      return 'لا يمكن ترك الخانة فارغة';
                    }if (value.length <6) {
                      return 'يجب ان تكون كلمة المرور اكبر من 6 خانات';
                    }  if(value != _password) {
                      return 'كلمة المرور مختلفة!';
                    }else{
                      return null;
                    }
                  },
                  onChanged: (value) => _confirmpassword = value,
                  cursorColor: Color(0xffE6915D),
                  obscureText: _2obscureText,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.black,
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _2obscureText = !_2obscureText;
                        });
                      },
                      child: Icon(_2obscureText
                          ? Icons.visibility_off
                          :Icons.visibility,
                      ),
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
                  if (formkey.currentState!.validate()){
                    signUp();
                  }
                },
                child: Container(
                  margin: EdgeInsets.only(left: 120, right: 120, top: 60),
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
      ),
    );
  }
  Future signUp () async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(child: CircularProgressIndicator()),
    );

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController1.text.trim(),
        password: passwordController1.text.trim(),

      );
    } on FirebaseAuthException catch (e) {
      print(e);

      Utils.ShowSnackBar(e.message);
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
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