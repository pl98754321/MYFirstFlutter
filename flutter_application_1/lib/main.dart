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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AppbartitlePluem"),
        ),
        body: Center(
            child: ListView(
          children: getlist(number),
        )),
        floatingActionButton: FloatingActionButton(onPressed: () {
          addnum();
        }));
  }

  void addnum() {
    return setState(() {
      number++;
    });
  }
}
