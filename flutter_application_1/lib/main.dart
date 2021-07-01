import 'dart:ui';
import 'package:flutter_application_1/CreatedWid.dart';
import 'Template.dart';
import 'Food.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "titlePLuem",
        home: MyHomepage(),
        theme: ThemeData(primaryColor: Colors.green));
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> with Createwid {
  //listFood
  List<Food> listFood = [
    Food('Fried Riec', 50, "assets/image/fried_rice.jpg"),
    Food('Fried Chicken', 20, "assets/image/fried_egg.jpg"),
    Food('Empowered Egg', 300, "assets/image/egg.jpg"),
  ];

  //แสดงผล
  @override
  Widget build(BuildContext context) {
    //firstbodytype
    Widget bodytype1 = ListView.builder(
        itemCount: listFood.length,
        itemBuilder: (BuildContext context, int index) {
          Food Afood = listFood[index];
          return ListTile(
            title: Text("เมนู ${Afood.name}"),
            subtitle: Text("ราคา ${Afood.price}"),
            onTap: () {
              print("You have just pic ${Afood.name}");
            },
          );
        });

    //Height of contrainer bodytype2
    double hei = 100;

    Widget Buil1 = Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          ConTem1("Chicken", 500000, 100, Colors.red, 2),
          ConTem1("Sec", 500000, 100, Colors.green, 2)
        ],
      ),
    );

    return Scaffold(
        appBar: AppBar(
          title: Text("AppbartitlePluem"),
        ),
        body: Buil1,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            setState(() {
              listFood.add(Food("ไก", 555, ""));
            });
            print("กดกด");
          },
          label: Text("Testeiei"),
          icon: Icon(Icons.add),
        ));
  }
}
