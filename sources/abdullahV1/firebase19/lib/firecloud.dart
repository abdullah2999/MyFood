import 'dart:html';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class firecloud extends StatefulWidget {
  const firecloud({Key? key}) : super(key: key);

  @override
  State<firecloud> createState() => _firecloudState();
}

class _firecloudState extends State<firecloud> {
  final textcontroll = TextEditingController();


 getData(){

 }



  @override
  Widget build(BuildContext context) {
    CollectionReference shop = FirebaseFirestore.instance.collection('shop');

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: textcontroll,
        ),
      ),
      body:Column(),
      
      
      /*Center(
        child: StreamBuilder(
          stream: shop.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(child: Text('wait....'));
            }
            return ListView( 
              children: snapshot.data!.docs.map((shop) {
                return Center(
                  child: ListTile(
                    title: Text(shop['name']),
                  ),
                );
              }).toList(),
            );
          },
        ),
      ),*/
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.save),
      ),
    );
  }
}
