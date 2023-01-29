// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:exams_over_practice/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App bar"),
        centerTitle: true,
      ),
      body: Column(),
      drawer: MyDrawer(),
    );
  }
}
