// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyBoxShadow extends BoxDecoration {
  MyBoxShadow()
      : super(boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(2.0, 2.0),
            blurRadius: 15.0,
          )
        ]);
}
