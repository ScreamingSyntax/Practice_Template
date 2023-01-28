import 'package:exams_over_practice/pages/home_page.dart';
import 'package:exams_over_practice/pages/login_page.dart';
import 'package:exams_over_practice/routes/routes_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MyRoutes.loginPage,
      routes: {
        MyRoutes.loginPage: (context) => LoginPage(),
        MyRoutes.homePage: ((context) => HomePage())
      },
    );
  }
}
