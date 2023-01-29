// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:exams_over_practice/Routes/my_routes.dart';
import 'package:exams_over_practice/pages/home_page.dart';
import 'package:exams_over_practice/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        MyRoutes.loginPage: ((context) => LoginPage()),
        MyRoutes.homePage: ((context) => HomePage())
      },
    );
  }
}
