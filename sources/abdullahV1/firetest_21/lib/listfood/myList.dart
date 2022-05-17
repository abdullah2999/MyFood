import 'package:firetest_21/listfood/listview.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class myList extends StatefulWidget {
  const myList({ Key? key }) : super(key: key);

  @override
  State<myList> createState() => _myListState();
}

class _myListState extends State<myList> {
  List myrecipes=[];

  CollectionReference myrecipe =FirebaseFirestore.instance.collection('recipe');


getData() async{
    var getRecipe =await myrecipe.where('uid',isEqualTo: FirebaseAuth.instance.currentUser?.uid).get();
    getRecipe.docs.forEach((element) { 
      setState(() {
        myrecipes.add(element.data());
      });
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
      body: ListView.builder(
          itemCount: myrecipes.length,
          itemBuilder: (context,i){
             return ListTile(
               title: Text('${myrecipes[i]['name']}'),
               subtitle: Text('${myrecipes[i]['time']}'),
               trailing: Text('${myrecipes[i]['diff']}'),
               );
          },
        ),
    );
  }
}