import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class signUp extends StatefulWidget {
  const signUp({ Key? key }) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  
  final usernameinfo=TextEditingController();

  getName() async{
    CollectionReference userRef=FirebaseFirestore.instance.collection('user');

    userRef.add({
      'username':usernameinfo.text,
      'email':emailController.text
    });
  }

  @override
  void initState() {
    getName();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: usernameinfo,
            decoration: InputDecoration(labelText: 'username'),
          ),
          TextField(
            controller: emailController,
            decoration: InputDecoration(labelText: 'email'),
          ),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(labelText: 'password'),
          ),
          ElevatedButton(onPressed: ()async{
              await FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: emailController.text,
                    password: passwordController.text,
                    );
                    getName();
                    
                    setState(() {
                    });
                    
          }, child: Text('sign up')),
        ],
      ),
    );
  }
}