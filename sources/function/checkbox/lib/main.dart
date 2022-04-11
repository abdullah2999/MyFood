import 'package:flutter/material.dart';
import 'package:checkbox/checkbox_state.dart';

void main(){
  runApp(MaterialApp(home:checky()));
}


class checky extends StatefulWidget {
  const checky({ Key? key }) : super(key: key);

  @override
  State<checky> createState() => _checkyState();
}

class _checkyState extends State<checky> {
  final tvt=[
    CheckBoxState(title: 'one'),
    CheckBoxState(title: 'two'),
    CheckBoxState(title: 'three'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children:[ 
          ...tvt.map(buildSingleCheckbox).toList(),
          ]
        ),
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