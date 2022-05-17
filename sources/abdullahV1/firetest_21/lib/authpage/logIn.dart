import 'package:firebase_auth/firebase_auth.dart';
import 'package:firetest_21/authpage/signUp.dart';
import 'package:flutter/material.dart';

class logIn extends StatefulWidget {
  const logIn({ Key? key }) : super(key: key);

  @override
  State<logIn> createState() => _logInState();
}

class _logInState extends State<logIn> {
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    User? user=FirebaseAuth.instance.currentUser;


    return Scaffold(
      appBar: AppBar(
        title: Text('User: logged '+ (user==null? 'out':'in')),
      ),
      body: Column(
        children: [
          TextField(
            controller: emailController,
            decoration: InputDecoration(labelText: 'Email'),
            
          ),
          TextField(
             controller: passwordController,
             decoration: InputDecoration(labelText: 'password'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
               onPressed: ()async{
                 await FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: emailController.text,
                  password: passwordController.text,
                 );
                 setState(() {});
               },
               child: Text('Log In'),
               ),
              ElevatedButton(
                onPressed: () async{
                 
                 Navigator.push(
                   context,
                      MaterialPageRoute(builder: (context) => const signUp()),
                    );
                },
                child: Text('sign up'),
                ),
              ElevatedButton(
                onPressed: () async{
                  await FirebaseAuth.instance.signOut();
                  setState(() {});
                },
                child: Text('log out'),
                ),
            ],
          ),
        ],
      ),
    );
  }
}