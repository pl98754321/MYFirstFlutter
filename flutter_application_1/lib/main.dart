import 'dart:ui';
import 'package:flutter_application_1/CreatedWid.dart';

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
  int number = 2;

  //แสดงผล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AppbartitlePluem"),
        ),
        body: Center(
          child: ListView.builder(
              itemCount: listFood.length,
              itemBuilder: (BuildContext context, int index) {
                Food Afood = listFood[index];
                return ListTile(
                  title: Text("เมนู ${Afood.name}"),
                  subtitle: Text("ราคา ${Afood.price}"),
                );
              }),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Text("Testeiei"),
          icon: Icon(Icons.add),
        ));
  }

  //ฟังก์ชั่นเพิ่มตัวเลข
  void addnum() {
    return setState(() {
      number++;
    });
  }

  //listFood
  List<Food> listFood = [
    Food('Fried Riec', 50),
    Food('Fried Chicken', 20),
    Food('Empowered Egg', 300),
  ];
}
