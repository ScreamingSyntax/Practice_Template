import 'package:flutter/material.dart';

import '../themes.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Catalog App", style: MyTextStyle(context: context, width: 10)),
        SizedBox(
          height: 5,
        ),
        Text(
          "Trending Products",
          style:
              MyTextStyle(context: context, width: 17, fontWeightStatus: false),
        )
      ],
    );
  }
}

class MyTextStyle extends TextStyle {
  MyTextStyle(
      {required BuildContext context,
      required double width,
      bool fontWeightStatus = true})
      : super(
            color: MyTheme.bluishColor,
            fontWeight: fontWeightStatus ? FontWeight.bold : FontWeight.w200,
            fontSize: MediaQuery.of(context).size.width / width);
}
