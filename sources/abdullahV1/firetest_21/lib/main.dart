import 'package:firetest_21/authpage/logIn.dart';
import 'package:firetest_21/listfood/addList.dart';
import 'package:firetest_21/listfood/listview.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firetest_21/listfood/myList.dart';

import 'package:flutter/material.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();

  runApp(MaterialApp(
    home: checker(),
  ));
}

class checker extends StatefulWidget {
  const checker({Key? key}) : super(key: key);

  @override
  State<checker> createState() => _checkerState();
}
 
class _checkerState extends State<checker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return homePage();
          } else {
            return logIn();
          }
        },
      ),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

 CollectionReference username =FirebaseFirestore.instance.collection('user');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello '),
      ),
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {  
                 Navigator.push(
                   context,
                      MaterialPageRoute(builder: (context) => const addList()),
                    );
                },
                child: Text('add recipe'),
              ),
              ElevatedButton(
                onPressed: () {
                Navigator.push(
                   context,
                      MaterialPageRoute(builder: (context) => const listView()),
                    );
                },
                child: Text('view recipe'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                   context,
                      MaterialPageRoute(builder: (context) => const myList()),
                    );
                },
                child: Text('view my recipe'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
         await FirebaseAuth.instance.signOut();
          setState(() {});
        },
        child: Icon(Icons.logout),
      ),
    );
  }
}
