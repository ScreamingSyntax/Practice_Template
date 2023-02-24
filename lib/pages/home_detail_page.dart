import 'package:exams_over_practice/models/catalog.dart';
import 'package:exams_over_practice/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item item;

  const HomeDetailPage({super.key, required this.item});
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back_ios)),
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Container(
        color: Theme.of(context).cardColor,
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
              onPressed: () => null,
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.onPrimary),
              child: Text(
                "Buy",
                style:
                    TextStyle(color: Theme.of(context).colorScheme.onSecondary),
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          // padding: EdgeInsets.all(10),
          color: Theme.of(context).canvasColor,
          constraints: const BoxConstraints.expand(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: Key(item.id.toString()),
                child: Image.network(
                    // fit: BoxFit.contain,
                    item.image,
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height / 3),
              ),
              Expanded(
                flex: 10,
                child: VxArc(
                  // clipShadows: [VxClipShadow(color: Colors.blue)],
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  height: 20,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    width: context.screenWidth,
                    // height: context.screenHeight,
                    color: Theme.of(context).cardColor,
                    child: Column(
                      children: [
                        "${item.name}"
                            .text
                            .xl3
                            .bold
                            .color(Theme.of(context).colorScheme.primary)
                            .make()
                            .p16(),
                        "${item.desc}"
                            .text
                            .color(Theme.of(context).colorScheme.primary)
                            .textStyle(context.captionStyle)
                            .make(),
                        const SizedBox(
                          height: 10,
                        ),
                        "Ipsum diam consetetur dolor sed stet elitr et. Ut et ut lorem et. Lorem dolores gubergren no justo clita. Labore."
                            .text
                            .color(Theme.of(context).colorScheme.primary)
                            .textStyle(context.captionStyle)
                            .make()
                            .p16(),
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
