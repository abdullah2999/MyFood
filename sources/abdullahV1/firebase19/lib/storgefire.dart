import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'checkBoxState.dart';
import 'package:firebase_auth/firebase_auth.dart';

class firetasty extends StatefulWidget {
  @override
  State<firetasty> createState() => _firetastyState();
}

class _firetastyState extends State<firetasty> {
  final nameController =TextEditingController();
  final emailController =TextEditingController();


  @override
  Widget build(BuildContext context) {
    CollectionReference users= FirebaseFirestore.instance.collection('user');
    

    var userid=FirebaseAuth.instance.currentUser;

    return Scaffold(
      //input to firecloud
      appBar: AppBar(
        title: TextField(
          controller: nameController,
        ),
        centerTitle: true,
        elevation: 0,
        leading: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
          ),
          onPressed: ()async{
                  await FirebaseAuth.instance.signOut();
                  setState(() {
                    
                  });
          },
          child:Icon(Icons.logout) ,),
      ),
       //show data from firecloud
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              //width: 300,
              child: StreamBuilder(
                stream: users.snapshots(),
                builder:(context,AsyncSnapshot<QuerySnapshot>snapshot){
                  if(!snapshot.hasData){
                    return Center(child: Text('Wait...'),);
                  }
                  return ListView(
                    children: snapshot.data!.docs.map((user){
                      return ListTile(
                        title: Text(user['username']),
                        subtitle: Text(user['email']),
                       onLongPress: (){
                          user.reference.delete();
                        },
                      );
                    }).toList(),
                  );
                }, ),
            ),
            Text(userid!.uid),
            TextField(controller:emailController,),
          ],
        ),
      ),
      //add data to firecloud
      floatingActionButton: FloatingActionButton(
      onPressed: (){
        users.doc(userid.uid).set({
          'username':nameController.text,
          'email':emailController.text,
        });
        nameController.clear();
        emailController.clear();
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