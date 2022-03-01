import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfoodapp/screen/SearchScreen.dart';
import 'package:myfoodapp/widgets/app_large_text.dart';


class HomeScreen extends StatefulWidget {
  @override
  __HomeScreenState  createState() =>__HomeScreenState();
}
class __HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchScreen()),
              );
            },
            child: Container(
              padding: const EdgeInsets.only(top: 70, right: 20),
              child: Row(
                children: [
                  Icon(Icons.search),
                ],
              ),
            ),
          ),
          SizedBox(height: 40,),
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: AppLargeText(text: 'وجبة اليوم'),
          ),
        ],
      ),
    );
  }
}
