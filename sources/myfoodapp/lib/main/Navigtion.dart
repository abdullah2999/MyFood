import 'package:flutter/material.dart';
import 'package:myfoodapp/screen/AccountScreen.dart';
import 'package:myfoodapp/screen/HomeScreen.dart';


class Navigtion extends StatefulWidget {
  @override
  _NavigtionState  createState() =>_NavigtionState();
}

class _NavigtionState extends State<Navigtion> {
  int _currentIndex = 0;

  List<Widget> pages = <Widget>[
    HomeScreen(),
    Accountscreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[_currentIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        backgroundColor: Color(0xffE6915D),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'الحساب',
          ),
        ],
      ),
    );
  }

}