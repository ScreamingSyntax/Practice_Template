// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:exams_over_practice/models/catalog.dart';
import 'package:exams_over_practice/widgets/drawer.dart';
import 'package:exams_over_practice/widgets/item.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 5));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogModel.product1 =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App bar"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(13),
        child: (CatalogModel.product1.isNotEmpty)
            ? ListView.builder(
                itemCount: CatalogModel.product1.length,
                itemBuilder: (context, index) {
                  return ItemWidget(
                    item: CatalogModel.product1[index],
                  );
                },
              )
            : Center(
                child: CircularProgressIndicator(
                color: Colors.black,
              )),
      ),
      drawer: MyAppDrawer(),
    );
  }
}
