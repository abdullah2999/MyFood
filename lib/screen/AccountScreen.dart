import 'package:flutter/material.dart';
import 'package:myfoodapp/screen/LoginScreen.dart';
import 'package:myfoodapp/screen/MyReview.dart';
import 'package:myfoodapp/screen/SettingScreen.dart';
import 'package:myfoodapp/screen/your_list.dart';

class Accountscreen extends StatelessWidget {
  const Accountscreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            'الاسم',
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 23,
                fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('The Chef'),
          SizedBox(
            height: 50,
          ),
          Text(
            'قائمتي',
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                ),
          ),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>yourList()),
                  );
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        )),
                    backgroundColor:
                    MaterialStateProperty.all(Color(0xffE6915D))),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                  child: Column(
                    children: <Widget>[
                      ImageIcon(
                        AssetImage('images/recipe_book.png'),
                        size: 70,
                      ),
                      Text(
                        'وصفاتك',
                        style: TextStyle(fontFamily: 'Cairo'),
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>(MyReviewScreen())),
                );},
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),),
                    backgroundColor:
                    MaterialStateProperty.all(Color(0xffE6915D))),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ImageIcon(
                          AssetImage('images/star (2).png'),
                          size: 70,
                        ),

                        Text(
                          'تقييمي',
                          style: TextStyle(fontFamily: 'Cairo'),
                        ),
                      ]),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>(SettingScreen())),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xffE6915D)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      )),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                  child: Column(children: <Widget>[

                    ImageIcon(
                      AssetImage('images/settings.png'),
                      size: 70,
                    ),
                    Text(
                      'الاعدادات',
                      style: TextStyle(fontFamily: 'Cairo'),
                    )
                  ]),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 170,
          ),
          FloatingActionButton.extended(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LoginScreen()));
            },
            backgroundColor: Color(0xffE6915D),
            icon: Icon(
              Icons.logout,
            ),
            label: Text(
              'تسجيل الخروج',
              style: TextStyle(fontFamily: 'Cairo'),
            ),
          ),
        ],
    );
  }
}

