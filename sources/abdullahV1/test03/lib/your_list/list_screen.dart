import 'package:flutter/material.dart';
import 'package:test03/your_list/add_recipe.dart';


class list_screen extends StatefulWidget {
  const list_screen({ Key? key }) : super(key: key);

  @override
  _list_screenState createState() => _list_screenState();
}

class _list_screenState extends State<list_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your recipe'),
        centerTitle: true,
      ),
      body: Container(),
    floatingActionButton: FloatingActionButton(
    child: Icon(Icons.add),
    onPressed: (){
      Navigator.push(context,
      MaterialPageRoute(builder: (context)=>add_recipe())
      );
    }),
    );
  }
  
}