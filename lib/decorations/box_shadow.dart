// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyBoxShadow extends BoxDecoration {
  MyBoxShadow()
      : super(boxShadow: [
          BoxShadow(
              color: Colors.green,
              offset: Offset(-10, 15.0),
              blurStyle: BlurStyle.inner,
              blurRadius: 40,
              spreadRadius: 1)
        ]);
}
