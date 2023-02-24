// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:exams_over_practice/Routes/my_routes.dart';
import 'package:exams_over_practice/models/catalog.dart';
import 'package:exams_over_practice/widgets/drawer.dart';
import 'package:exams_over_practice/widgets/item.dart';
import 'package:exams_over_practice/widgets/themes.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/home widgets/catalog_header.dart';
import '../widgets/home widgets/product_list.dart';

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
      floatingActionButton: SizedBox(
        height: 50,
        width: 50,
        child: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, MyRoutes.cartPageRoute),
          child: Icon(
            size: 20,
            FontAwesomeIcons.cartArrowDown,
          ),
        ),
      ),
      backgroundColor: Theme.of(context).canvasColor,
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.all(13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ProductHeader(),
            if (CatalogModel.product1.isNotEmpty)
              Expanded(child: ProductList())
            else
              Expanded(child: Center(child: CircularProgressIndicator()))
          ],
        ),
      )),
    );
  }
}
