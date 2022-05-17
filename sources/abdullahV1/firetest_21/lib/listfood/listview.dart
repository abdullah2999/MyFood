
import 'package:firetest_21/listfood/listInfo.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class listView extends StatefulWidget {
  const listView({ Key? key }) : super(key: key);

  @override
  State<listView> createState() => _listViewState();
}

class _listViewState extends State<listView> {
  List recipes=[];

  CollectionReference recipeRef=FirebaseFirestore.instance.collection('recipe');


  getData() async{
    var getRecipe =await recipeRef.get();
    getRecipe.docs.forEach((element) { 
      setState(() {
        recipes.add(element.data());
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
        itemCount: recipes.length,
        itemBuilder: (context,i){
           return ListTile(
             onTap: (){
               Navigator.push(
                   context,
                      MaterialPageRoute(builder: (context) =>  listInfo(info: recipes,)),
                    );
             },
             title: Text('${recipes[i]['name']}'),
             subtitle: Text('${recipes[i]['time']}'),
             trailing: Text('${recipes[i]['diff']}'),
             );
        },
      ),
    );
  }
}