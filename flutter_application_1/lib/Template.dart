import 'dart:ui';
import 'Food.dart';
import 'package:flutter/material.dart';

class ConTem1 extends StatelessWidget {
  String text = "donthave";
  int money = 0, number = 1;
  double hei = 20, Pad = 5;
  Color colorI = Colors.black;

  ConTem1(this.text, this.money, this.hei, this.colorI, this.number);

  @override
  Widget build(BuildContext context) {
    List<Widget> inner = [];
    for (int i = 0; i < number; i++) {
      //main
      inner.add(
        Container(
          decoration: BoxDecoration(color: colorI),
          height: hei,
          child: Row(
            children: [
              Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Expanded(
                  child: Text(
                money.toString(),
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ))
            ],
          ),
        ),
      );

      //between
      inner.add(SizedBox(
        height: Pad,
      ));
    }
    return Column(
      children: inner,
    );
  }
}
