import 'package:exams_over_practice/models/catalog.dart';
import 'package:exams_over_practice/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item item;

  const HomeDetailPage({super.key, required this.item});
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: MyTheme.bluishColor,
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: ButtonBar(
          // mainAxisSize: MainAxisSize.min,
          alignment: MainAxisAlignment.spaceAround,
          // buttonMinWidth: 200,
          // layoutBehavior: ButtonBarLayoutBehavior.padded,
          // buttonPadding: EdgeInsetsGe0ome/try.infinity,
          children: [
            Text(
              'Rs ${item.price.toString()}',
              style: TextStyle(
                  color: MyTheme.bluishColor, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () => print("Hello"),
              child: Text("Buy"),
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(StadiumBorder()),
                  fixedSize: MaterialStatePropertyAll(Size(40, 40))),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          // padding: EdgeInsets.all(10),
          color: Colors.white,
          constraints: BoxConstraints.expand(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Hero(
                  tag: Key(item.id.toString()),
                  child: Image.network(
                      // fit: BoxFit.contain,
                      item.image,
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 3),
                ),
              ),
              Expanded(
                flex: 10,
                child: VxArc(
                  // clipShadows: [VxClipShadow(color: Colors.blue)],
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  height: 20,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    width: context.screenWidth,
                    // height: context.screenHeight,
                    color: MyTheme.creamishColor,
                    child: Column(
                      children: [
                        Text(
                          item.name,
                          style: TextStyle(
                              color: MyTheme.bluishColor,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width / 19),
                        ),
                        Text(
                          item.desc,
                          style: TextStyle(color: Colors.black45, fontSize: 13),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
