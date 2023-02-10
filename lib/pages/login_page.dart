// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:exams_over_practice/pages/decorations/boxshadow_decoration.dart';
import 'package:exams_over_practice/pages/decorations/textfield_decorations.dart';
import 'package:exams_over_practice/routes/routes_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool onPressed = false;
  bool onPressed2 = false;

  _buttonValidation(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      onPressed = true;
      setState(() {});
      await Future.delayed(Duration(seconds: 4));
      Navigator.pushNamed(context, MyRoutes.homePage);
      onPressed = false;
      setState(() {});
    }
  }

  _validation(String? value, length, name) {
    if (value!.isEmpty) {
      return "$name can't be empty";
    } else if (value.length > length) {
      return "$name can't be greater than $length characters";
    } else if (name == "Username") {
      if (value.contains(" ")) {
        return "$name Can't have Spaces between them";
      } else if (value.contains(RegExp(r'[^\w\s]'))) {
        return 'Special characters are not allowed in $name';
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                "assets/images/Login.png",
              ),
              Text(
                "LOGIN",
                style: TextStyle(
                    fontSize: 33,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Container(
                      // ignore: sort_child_properties_last
                      child: TextFormField(
                        validator: (value) => _validation(value, 7, "Username"),
                        decoration: MyTextFieldDecoration(
                            hintText: "Enter Username",
                            labelText: "Username",
                            icon: Icon(
                              Icons.emoji_people,
                              color: Colors.red,
                            )),
                      ),
                      // ignore: prefer_const_literals_to_create_immutables
                      decoration: MyBoxShadow(),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: MyBoxShadow(),
                      child: TextFormField(
                        validator: (value) =>
                            _validation(value, 10, "Password"),
                        decoration: MyTextFieldDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",
                            icon: Icon(
                              Icons.password,
                              color: Colors.red,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () => _buttonValidation(context),
                      child: AnimatedContainer(
                        width: onPressed ? 0 : 100,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            // border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(20),
                            // ignore: prefer_const_literals_to_create_immutables
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(10.0, 10.0),
                                blurRadius: 15.0,
                              ),
                            ]),
                        duration: Duration(seconds: 3),
                        child: onPressed
                            ? Icon(
                                Icons.verified,
                                color: Colors.black,
                              )
                            : Text("Login", style: TextStyle(fontSize: 18)),
                      ),
                    )
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
