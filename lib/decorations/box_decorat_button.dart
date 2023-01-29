// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyBoxButton extends BoxDecoration {
  MyBoxButton()
      : super(
            color: Colors.amber[100],
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.red, width: 2),
            boxShadow: [
              // ignore: prefer_const_constructors
              BoxShadow(
                  color: Colors.green,
                  offset: Offset(-7, 11),
                  spreadRadius: 1,
                  blurStyle: BlurStyle.inner,
                  blurRadius: 40)
            ]);
}
