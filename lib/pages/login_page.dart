// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_build_context_synchronously

import 'package:exams_over_practice/Routes/my_routes.dart';
import 'package:exams_over_practice/decorations/box_decorat_button.dart';
import 'package:exams_over_practice/decorations/box_shadow.dart';
import 'package:exams_over_practice/decorations/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  // ignore: unused_field
  bool _onPressed = false;
  _loginButtonPressed(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      _onPressed = true;
      setState(() {});
      await Future.delayed(Duration(seconds: 3));
      Navigator.pushNamed(context, MyRoutes.homePage);
      _onPressed = false;
      setState(() {});
    }
  }

  _validateTextFields(String? value, int length, String? name) {
    if (value!.isEmpty) {
      return "$name cannot be empty";
    } else if (value.length > length) {
      return "$name cannot have more than $length characters";
    }
    if (name == "Username") {
      if (value.contains(RegExp(r'[^\w\s\_\.]'))) {
        return "$name should not contain any Special Characters";
      }
      if (_validateSpecialCharacters(value, name) == "FullStopIncreased") {
        return "$name cannot have more than one . ";
      }
      if (_validateSpecialCharacters(value, name) == "UnderScoreIncreased") {
        return "$name cannot have more than one _ ";
      }
      if (value[0] == "_") {
        return "$name cannot start with _";
      }
      if (value[0] == ".") {
        return "$name cannot start with .";
      }
    }
    return null;
  }

  _validateSpecialCharacters(String value, String? name) {
    String specialCharacters = value;
    int noOfTimesUnderScore = 0;
    int noOfTimesFullStop = 0;

    for (int i = 1; i <= specialCharacters.length; i++) {
      if (specialCharacters[i - 1] == "_") {
        noOfTimesUnderScore += 1;
      }
      if (specialCharacters[i - 1] == ".") {
        noOfTimesFullStop += 1;
      }
    }
    if (noOfTimesFullStop > 1) {
      return "FullStopIncreased";
    }
    if (noOfTimesUnderScore > 1) {
      return "UnderScoreIncreased";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                child: Column(
                  children: [
                    Container(
                      decoration: MyBoxShadow(),
                      child: TextFormField(
                          decoration: MyTextFieldDecoration(
                              Icon(Icons.people), "UserName"),
                          validator: (value) =>
                              _validateTextFields(value, 8, "Username")),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      decoration: MyBoxShadow(),
                      child: TextFormField(
                        validator: (value) =>
                            _validateTextFields(value, 20, "Password"),
                        decoration:
                            MyTextFieldDecoration(Icon(Icons.lock), "Password"),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      splashColor: Colors.blue,
                      onTap: () => _loginButtonPressed(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 3),
                        width: _onPressed ? 0 : 90,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: MyBoxButton(),
                        child: _onPressed
                            ? Icon(Icons.verified)
                            : Text(
                                "Login",
                                style: TextStyle(
                                    fontFamily: GoogleFonts.lato().fontFamily,
                                    fontSize: 25),
                              ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
