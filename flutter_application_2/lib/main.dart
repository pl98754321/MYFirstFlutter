import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp())
}

class Myapp extends StatelessWidget {
  const Myapp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App2",
      home: Myhome(),
      theme: ThemeData(primaryColor: Colors.pink),
      
    );
      
    
  }
}

class Myhome extends StatefulWidget {
  const Myhome({ Key? key }) : super(key: key);

  @override
  _MyhomeState createState() => _MyhomeState();
}


/////////////////////////////////
class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    return 
  }
}