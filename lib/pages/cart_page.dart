import 'package:exams_over_practice/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamishColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: MyTheme.bluishColor,
        title: "Cart".text.textStyle(context.titleLarge).bold.make(),
        centerTitle: true,
      ),
      body: SafeArea(child: Column()),
    );
  }
}
