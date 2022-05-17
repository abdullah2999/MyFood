import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class listInfo extends StatefulWidget {
  final List info=[];
   listInfo({ Key? key,info }) : super(key: key);

  @override
  State<listInfo> createState() => _listInfoState();
}

class _listInfoState extends State<listInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}