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
        theme: ThemeData(primaryColor: Colors.green.shade50));
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    int aa = 0;
    return Scaffold(
        appBar: AppBar(
          title: Text("AppbartitlePluem"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("column1"),
              Text(
                aa.toString(),
                style: TextStyle(fontSize: 30, color: Colors.black),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() {
            aa++;
          });
        }));
  }
}
