import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test03/checkbox_state.dart';
import 'package:test03/your_list/add_staffTest.dart';

class add_recipe extends StatefulWidget {
  const add_recipe({Key? key}) : super(key: key);

  @override
  _add_recipeState createState() => _add_recipeState();
}

class _add_recipeState extends State<add_recipe> {
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
  //image
  File? image;
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemporary = File(image.path);
      this.image = imageTemporary;
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('faild to pick image:$e');
    }
  }

  List<Widget> temp = [
    TextField(
      decoration: InputDecoration(border: OutlineInputBorder()),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              image != null
                  ? Image.file(
                      image!,
                      width: 160,
                      height: 160,
                      fit: BoxFit.cover,
                    )
                  : FlutterLogo(size: 160),
              buildButton(
                title: 'add image',
                icon: Icons.add,
                onClicked: () => pickImage(),
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              //diff and clock
              Row(
                children: [
                  Icon(Icons.star),
                  Icon(Icons.lock_clock),
                ],
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Text('ingredients'),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              //ingredients here
              Container(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount:listDynamic.length,
                    itemBuilder: ((context, index) => listDynamic[index])
                 ),
              ),

               FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: addDynamic,
        ),
              //option 2
              ElevatedButton(onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>test()));
              }, child: Text('helloThere ')),
              SizedBox(
                height: 5,
              ),
              Divider(
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButton({
    required String title,
    required IconData icon,
    required VoidCallback onClicked,
  }) =>
      ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size.fromHeight(28),
            primary: Colors.white,
            onPrimary: Colors.black,
            textStyle: TextStyle(fontSize: 20),
          ),
          child: Row(
            children: [
              Icon(
                icon,
                size: 20,
              ),
              SizedBox(
                width: 16,
              ),
              Text(title),
            ],
          ),
          onPressed: onClicked);
  Widget TextIcon({required String word, required IconData icon}) => Row(
        children: [
          Icon(icon),
          TextField(
            decoration: InputDecoration(labelText: word),
          ),
        ],
      );
}

class DynamicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(),
    );
  }
}