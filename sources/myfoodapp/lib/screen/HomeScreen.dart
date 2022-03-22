import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myfoodapp/screen/SearchScreen.dart';
import 'package:myfoodapp/widgets/app_large_text.dart';



class HomeScreen extends StatefulWidget {
  @override
  __HomeScreenState  createState() =>__HomeScreenState();
}
class __HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
      final value = await showDialog<bool>(context: context, builder: (context){
          return AlertDialog(
            title: const Text(' تنبيه'),
            titleTextStyle: TextStyle(
              fontSize: 22,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.bold,
              color: Color(0xffE6915D),
            ),
            content: const Text('هل تريد الخروج؟'),
            contentTextStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              fontFamily: 'Cairo',
              color: Colors.black,
            ),
            actions: [
              TextButton(onPressed: ()=>Navigator.of(context).pop(false),
                  child:  Text ('لا'),
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  textStyle: TextStyle(
                    fontFamily: 'Cairo',
                  ),
                ),
              ),
              TextButton(onPressed: ()=>SystemNavigator.pop(),
                style: TextButton.styleFrom(
                  primary: Color(0xffE6915D),
                  textStyle: TextStyle(
                    fontFamily: 'Cairo',
                  ),
                ),
                child: const Text ('نعم'),
              ),
            ],
          );
        });
      if (value != null) {
        return Future.value(value);
      } else{
        return Future.value(false);
      }
      },
      child: Scaffold(
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
      ),
    );
  }
}
