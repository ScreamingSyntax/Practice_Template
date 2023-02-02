// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:exams_over_practice/Routes/my_routes.dart';
import 'package:exams_over_practice/pages/home_page.dart';
import 'package:exams_over_practice/pages/login_page.dart';
import 'package:exams_over_practice/widgets/themes.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

ishan() {
  print("object");
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      // initialRoute: MyRoutes.homePage,
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoutes.loginPage: ((context) => LoginPage()),
        MyRoutes.homePage: ((context) => HomePage())
      },
    );
  }
}
