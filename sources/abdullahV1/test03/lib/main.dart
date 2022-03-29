import 'package:flutter/material.dart';
import 'package:test03/your_list/list_screen.dart';
import 'package:test03/your_list/recipe_screen.dart';

void main() {
  runApp(MaterialApp(home: page()));
}

class page extends StatefulWidget {
  const page({Key? key}) : super(key: key);

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('demo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => list_screen()));
                },
                child: Text('your_list')),
            TextButton(
             onPressed: (){
               Navigator.push(context,
                MaterialPageRoute(builder: (context)=>recipe_screen()));
             },
             child: Text('recipe_screen')),
          ],
        ),
      ),
    );
  }
}
