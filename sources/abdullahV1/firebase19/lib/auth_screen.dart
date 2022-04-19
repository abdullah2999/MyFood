import 'package:firebase19/firecloud.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class authScreen extends StatefulWidget {
  @override
  State<authScreen > createState() => _authScreenState();
}

class _authScreenState extends State<authScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    User? user=FirebaseAuth.instance.currentUser;
    CollectionReference users= FirebaseFirestore.instance.collection('user');


    var userid=FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title:Text('Auth user (Logged '+(user == null ? 'out':'in')+')'),
      ),
      body:Column(
        children: [
          Text('email'),
          TextField(controller: emailController,),
          Text('password'),
          TextField(controller: passwordController,),
          Text('name'),
          TextField(controller: usernameController,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
               onPressed: ()async{
                 await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: emailController.text,
                  password: passwordController.text,
                  );

                   users.doc(userid?.uid).set({
                   'username':usernameController.text,
                   'email':emailController.text,
                    });
                  setState(() {
                    
                  });
               },
               child: Text('Sign Up'),
              ),
              ElevatedButton(
               onPressed: ()async{
                 await FirebaseAuth.instance.signInWithEmailAndPassword(
                   email: emailController.text,
                   password: passwordController.text,);
                   setState(() {
                     
                   });
               },
               child: Text('Log in'),
               ),
              ElevatedButton(
                onPressed: ()async{
                  await FirebaseAuth.instance.signOut();
                  setState(() {
                    
                  });
                },
                child: Text('Log out'),
                ),
            ],
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
               MaterialPageRoute(
                 builder: (context)=>firecloud(),
                 ),
               );
            },
            child: Text('firestore page'),
            ),
        ],
      ),
    );
  }
}