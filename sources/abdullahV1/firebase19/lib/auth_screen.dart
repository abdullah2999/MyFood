import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class authScreen extends StatefulWidget {
  @override
  State<authScreen > createState() => _authScreenState();
}

class _authScreenState extends State<authScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    User? user=FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title:Text('Auth user (Logged '+(user == null ? 'out':'in')+')'),
      ),
      body:Column(
        children: [
          TextField(controller: emailController,),
          TextField(controller: passwordController,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
               onPressed: ()async{
                 await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: emailController.text,
                  password: passwordController.text,
                  );
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
        ],
      ),
    );
  }
}