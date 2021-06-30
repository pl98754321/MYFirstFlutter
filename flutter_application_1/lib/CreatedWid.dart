import 'dart:ui';
import 'package:flutter_application_1/CreatedWid.dart';

import 'Food.dart';
import 'package:flutter/material.dart';

class Createwid {
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

  Widget Buil = ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("เมนูที่${index + 1}"),
        );
      });
}
