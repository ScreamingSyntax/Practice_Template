// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextFieldDecoration extends InputDecoration {
  MyTextFieldDecoration(var icon)
      : super(
            filled: true,
            fillColor: Colors.amber[100],
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Colors.blue, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.red, width: 2)),
            prefixIcon: icon);
}
