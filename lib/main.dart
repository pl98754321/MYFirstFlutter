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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("เริ่มใช้งานinitstate");
  }

  //แสดงผล
  @override
  Widget build(BuildContext context) {
    //bodywidget
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
            setState(() {});
            print("กดกด");
          },
          label: Text("Testeiei"),
          icon: Icon(Icons.add),
        ));
  }
}
