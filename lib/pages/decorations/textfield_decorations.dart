import 'package:flutter/material.dart';

// ignore: empty_constructor_bodies
class MyTextFieldDecoration extends InputDecoration {
  MyTextFieldDecoration({String? hintText, String? labelText, var icon})
      : super(
            prefixIcon: icon,
            filled: true,
            hintText: labelText,
            fillColor: Color.fromARGB(255, 246, 247, 247),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.white, width: 2)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.white)));
}
