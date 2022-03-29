import 'package:flutter/material.dart';

class test extends StatefulWidget {
  const test({ Key? key }) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
    List<DynamicWidget> listDynamic =[];

addDynamic(){
  listDynamic.add(DynamicWidget());
  setState(() {
    
  });
}
delDynamic(){
  listDynamic.remove(DynamicWidget());
  setState(() {
    
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount:listDynamic.length,
                  itemBuilder: ((context, index) => listDynamic[index])
               ),
        floatingActionButton:FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: addDynamic,
        ),
    );
  }
}


class DynamicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(),
    );
  }
}

