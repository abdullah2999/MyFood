import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


class addList extends StatefulWidget {
  const addList({ Key? key }) : super(key: key);

  @override
  State<addList> createState() => _addListState();
}

class _addListState extends State<addList> {
  
  final nameInfo=TextEditingController();
  final timeInfo=TextEditingController();
  final diffInfo=TextEditingController();
  final staffInfo=TextEditingController();
  final stapsInfo=TextEditingController();

  GlobalKey<FormState>formstate=new GlobalKey<FormState>();

  getData()async{
   CollectionReference infoRef=FirebaseFirestore.instance.collection('recipe');
     infoRef.add({
       'name':nameInfo.text,
        'time':timeInfo.text,
        'diff':diffInfo.text,
        'staff':staffInfo.text,
        'staps':stapsInfo.text,
         'uid': FirebaseAuth.instance.currentUser?.uid
      });
  }

  @override
  void initState() {
   getData();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Form(
        key: formstate,
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                 controller: nameInfo,
                decoration: InputDecoration(labelText: 'name'),
                ),
              TextField(
                 controller: timeInfo,
                decoration: InputDecoration(labelText: 'time'),
                ),
              TextField(
                  controller: diffInfo,
                decoration: InputDecoration(labelText: 'diff'),)
              ,
              TextField(
                controller: staffInfo,
                decoration: InputDecoration(labelText: 'staff'),
                ),
              TextField(
               controller: stapsInfo,
                decoration: InputDecoration(labelText: 'staps'),
              ),
              ElevatedButton(
                onPressed: () {
                  
                  setState(() {
                    getData();
                  });
                },
                child: Text('add recipe'))
            ],
          ),
        ),
      ),
    );
  }
}