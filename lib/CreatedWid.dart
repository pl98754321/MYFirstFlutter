import 'dart:ui';
import 'package:flutter_application_1/CreatedWid.dart';

import 'Food.dart';
import 'package:flutter/material.dart';

class Createwid {
//เก็บเนื้อหาเรื่อง list
  List<Widget> getlist(int num) {
    List<Widget> data = [];
    for (int i = 0; i < num; i++) {
      data.add(ListTile(
        title: Text("number is ${i + 1}"),
        subtitle: Text("Ispm"),
      ));
    }
    return data;
  }
}
