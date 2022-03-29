import 'package:flutter/material.dart';
import 'package:test03/checkbox_state.dart';
import 'package:test03/textList.dart';

class recipe_screen extends StatefulWidget {
  const recipe_screen({ Key? key }) : super(key: key);

  @override
  State<recipe_screen> createState() => _recipe_screenState();
}

class _recipe_screenState extends State<recipe_screen> {
   final notification=[
   CheckBoxState(title: 'rice'),
   CheckBoxState(title:'water'),
   CheckBoxState(title: 'salt'),
 ];
final how=[
   textList(text: '1-boile water'),
   textList(text: '2-put rice in the pot'),
   textList(text: '3-serve and enjoy yummy'),
 ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text('rice',
            style: TextStyle(fontSize: 20),),
            Image(
              width: 200,
              height:200,
            image: NetworkImage(
            'https://cdn.loveandlemons.com/wp-content/uploads/2020/03/rice-842x1024.jpg')),
            Divider(thickness: 1,color: Colors.black,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('easy',style: TextStyle(fontSize: 20),),
              SizedBox(width: 2,),
              Icon(Icons.star,size: 50,),
              SizedBox(width:30,),
              Text('20 min',style: TextStyle(fontSize: 20),),
              SizedBox(width: 2,),
              Icon(Icons.lock_clock,size: 50,),
              
            ],),
            Divider(thickness: 1,color: Colors.black,),
            Text('ingredients',style: TextStyle(fontSize: 30,),),
            Divider(thickness: 1,color: Colors.black,),
            ...notification.map(buildSingleCheckbox).toList(),
            
            Divider(thickness: 1,color: Colors.black,),
            Text('how to cook it',style: TextStyle(fontSize: 30,),),
            Divider(thickness: 1,color: Colors.black,),
            ...how.map(howshow).toList(),
      
          ],
        ),
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
Widget howshow(textList t)=>Text(t.text,
style: TextStyle(fontSize: 20),
);
}