
import 'package:flutter/material.dart';
import 'your_list.dart';
import 'package:hexcolor/hexcolor.dart';

class Account_screen extends StatelessWidget {
  const Account_screen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
            child: CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage('assets/images/Mario.png'),
        )),
        SizedBox(
          height: 30,
        ),
        Text(
          'الاسم',
          style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange[900]),
        ),
        SizedBox(
          height: 20,
        ),
        Text('The Chef'),
        SizedBox(
          height: 20,
        ),
        Text(
          'قائمتي',
          style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange[900]),
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
                      MaterialStateProperty.all(HexColor('#E6915D'))),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                child: Column(
                  children: <Widget>[
                    ImageIcon(
                     AssetImage('assets/images/cooking.png'),
                      size: 100,
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
              onPressed: () {},
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),),
                  backgroundColor:
                      MaterialStateProperty.all(HexColor('#E6915D'))),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ImageIcon(
                       AssetImage('assets/images/Stars.png'),
                        size: 100,
                      ),
                      
                      Text(
                        'تقييمي',
                        style: TextStyle(fontFamily: 'Cairo'),
                      ),
                    ]),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(HexColor('#E6915D')),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                )),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                child: Column(children: <Widget>[
                  
                  ImageIcon(
                    AssetImage('assets/images/settings.png'),
                    size: 100,
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
          height: 250,
        ),
        FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: HexColor('#E6915D'),
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
