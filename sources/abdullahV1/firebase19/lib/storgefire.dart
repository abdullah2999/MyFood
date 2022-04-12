import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'checkBoxState.dart';

class firetasty extends StatefulWidget {
  @override
  State<firetasty> createState() => _firetastyState();
}

class _firetastyState extends State<firetasty> {
  final textController =TextEditingController();


  @override
  Widget build(BuildContext context) {
    CollectionReference users= FirebaseFirestore.instance.collection('user');


    return Scaffold(
      //input to firecloud
      appBar: AppBar(
        title: TextField(
          controller: textController,
        ),
        centerTitle: true,
        elevation: 0,
      ),
       //show data from firecloud
      body:Center(
        child: StreamBuilder(
          stream: users.orderBy('name').snapshots(),
          builder:(context,AsyncSnapshot<QuerySnapshot>snapshot){
            if(!snapshot.hasData){
              return Center(child: Text('Wait...'),);
            }
            return ListView(
              children: snapshot.data!.docs.map((user){
                return Center(
                  child: ListTile(
                    title: Text(user['name']),
                   /* onLongPress: (){
                      user.reference.delete();
                    },*/
                  ),
                );
              }).toList(),
            );
          }, ),
      ),
      //add data to firecloud
      floatingActionButton: FloatingActionButton(
      onPressed: (){
        users.add({
          'name':textController.text,
        });
        textController.clear();
      },
      child: Icon(Icons.save),
      ),
    );
    
  }
  Widget buildSingleCheckbox(CheckBoxState cb)=> CheckboxListTile(
activeColor: Color(0xffe6915d),
controlAffinity: ListTileControlAffinity.leading,
title: Text(cb.title,
style: TextStyle(fontSize: 20),
),
value: cb.value,
onChanged:(value)=>setState(() =>cb.value=value!),
);
}