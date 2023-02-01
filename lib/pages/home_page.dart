// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:exams_over_practice/models/catalog.dart';
import 'package:exams_over_practice/widgets/drawer.dart';
import 'package:exams_over_practice/widgets/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final dummyList = List.generate(10, ((index) => CatalogModel.product1[0]));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App bar"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(13),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyAppDrawer(),
    );
  }
}
