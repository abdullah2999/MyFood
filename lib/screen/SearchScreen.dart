import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        title: Container(
              height: 50,
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'البحث عن وصفة',
                  hintStyle: TextStyle(
                    fontFamily: 'Cairo',
                  )
                ),
              ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        scrollDirection: Axis.vertical,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Expanded(child:
             Padding(
               padding: const EdgeInsets.all(5.0),
               child: GestureDetector(
                 onTap: (){},
                 child: Image(
                   image:AssetImage('images/dinner.png'),
                  ),
               ),
             ),
             ),
              Text('الوجبات ',style: TextStyle(
              )),
              Expanded(child:
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: (){},
                  child: Image(
                    image:AssetImage('images/fast-food.png'),
                  ),
                ),
              ),
              ),
              Text(
                  'وجبة سريعة',style: TextStyle(
              )),
              Expanded(child:
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: (){},
                  child: Image(
                    image:AssetImage('images/sweets.png'),
                  ),
                ),
              ),
             ),
              Text('حلى',style: TextStyle(
              )),
              Expanded(child:
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: (){},
                  child: Image(
                    image:AssetImage('images/drink.png'),
                  ),
                ),
               ),
              ),
              Text('العصير',style: TextStyle(
              )),
            ],
          ),
        ),
      ),
    );
  }
}










