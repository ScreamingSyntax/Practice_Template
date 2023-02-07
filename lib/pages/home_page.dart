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
            ? GridView.builder(
                itemCount: CatalogModel.product1.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  final item = CatalogModel.product1[index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GridTile(
                      child: Image.network(item.image),
                      header: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                          ),
                          child: Text(
                            item.name,
                            style: TextStyle(color: Colors.white),
                          )),
                      footer: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                          child: Text(
                            item.price.toString(),
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
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
