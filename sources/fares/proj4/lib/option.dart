import 'package:flutter/material.dart';

class option extends StatelessWidget {
  const option({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE6915D),
      appBar: AppBar(backgroundColor: Color(0xffE6915D),
        title: Text('الاعدادات'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
        ),
      ),
      body:Center(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(30.0),
                  child: Image.asset('images/aklty.png'),
                  height: 130,
                  width: 130,
                ),
                Container(
                  margin: EdgeInsets.only(left: 60,right: 60),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){},
                          icon: Icon(Icons.alternate_email,color: Colors.white,)),
                      Text('تغيير البريد الالكتروني',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      IconButton(onPressed: (){},
                          icon: Icon(Icons.arrow_forward,color: Colors.white,)),
                    ],
                  ),
                ),
                Divider(
                  thickness:1.5,
                  color: Colors.white,
                  indent: 65,
                  endIndent: 65,
                ),
                Container(
                  margin: EdgeInsets.only(left: 60,right: 60),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){},
                          icon: Icon(Icons.person,color: Colors.white,)),
                      Text('تعديل اسم المستخدم ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(onPressed: (){},
                          icon: Icon(Icons.arrow_forward,color: Colors.white,)),
                    ],
                  ),
                ),
                Divider(
                  thickness:1.5,
                  color: Colors.white,
                  indent: 65,
                  endIndent: 65,
                ),
                Container(
                  margin: EdgeInsets.only(left: 60,right: 60),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){},
                          icon: Icon(Icons.lock,color: Colors.white,)),
                      Text(' تغيير كلمة المرور ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 25),
                      IconButton(onPressed: (){},
                          icon: Icon(Icons.arrow_forward,color: Colors.white,)),
                    ],
                  ),
                ),
                Divider(
                  thickness:1.5,
                  color: Colors.white,
                  indent: 65,
                  endIndent: 65,
                ),
                Divider(
                  thickness:1.5,
                  color: Colors.white,
                  indent: 110,
                  endIndent: 110,
                  height: 300,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}