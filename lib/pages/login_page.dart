// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:exams_over_practice/decorations/box_decorat_button.dart';
import 'package:exams_over_practice/decorations/box_shadow.dart';
import 'package:exams_over_practice/decorations/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Image.asset(
              "assets/images/Login.png",
              height: 200,
              fit: BoxFit.cover,
            ),
            Text(
              "Login",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              child: Column(
                children: [
                  Container(
                    decoration: MyBoxShadow(),
                    child: TextFormField(
                      decoration: MyTextFieldDecoration(Icon(Icons.people)),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: MyBoxShadow(),
                    child: TextFormField(
                      decoration: MyTextFieldDecoration(
                        Icon(Icons.lock),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 90,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: MyBoxButton(),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontFamily: GoogleFonts.lato().fontFamily,
                          fontSize: 25),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
