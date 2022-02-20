import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class yourList extends StatefulWidget {
  const yourList({ Key? key }) : super(key: key);

  @override
  _yourListState createState() => _yourListState();
}

class _yourListState extends State<yourList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: HexColor('#E6915D'),),
      body: Container(),
      floatingActionButton:    FloatingActionButton(
      backgroundColor: HexColor('#E6915D'),
      onPressed: (){},
      child: Icon(Icons.add),
    ),
    );
  }
}