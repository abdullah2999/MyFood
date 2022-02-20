import 'package:flutter/material.dart';
import 'screen/Home_screen.dart';
import 'screen/Account_screen.dart';
import 'package:hexcolor/hexcolor.dart';
/*
تحتاج hexcolor package
link:https://pub.dev/packages/hexcolor
*/
void main() {
  runApp(MaterialApp(
    home: test(),
  ));
}

class test extends StatefulWidget {
  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  int _selectedIndex = 0;
  List<Widget> _WidgetOptions = <Widget>[home_screen(), Account_screen()];
  void _onItemTap(int Index) {
    setState(() {
      _selectedIndex = Index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _WidgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 50,
        backgroundColor:HexColor('#E6915D'),
        selectedItemColor: Colors.grey[50],
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'account',
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
