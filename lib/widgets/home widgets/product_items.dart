import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../models/catalog.dart';
import '../themes.dart';

class ProductItems extends StatelessWidget {
  final Item item;

  ProductItems({super.key, required this.item})
      : assert(CatalogModel.product1.isNotEmpty);

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(35),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: Key(item.id.toString()),
            child: Image.network(
              item.image,
              width: MediaQuery.of(context).size.width / 5,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "${item.name}".text.color(MyTheme.bluishColor).bold.make(),
                "${item.desc}".text.textStyle(context.captionStyle).make(),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton.icon(
                        onPressed: null,
                        icon: FaIcon(
                          FontAwesomeIcons.cashRegister,
                          color: MyTheme.bluishColor,
                          size: 19,
                        ),
                        label: Text(
                          "Rs ${item.price}",
                          style: TextStyle(
                              color: MyTheme.bluishColor,
                              // fontWeight: FontWeight.bold,
                              fontSize: 12),
                        )),
                    TextButton.icon(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(MyTheme.bluishColor)),
                        onPressed: () => print("Test"),
                        icon: FaIcon(
                          FontAwesomeIcons.cartPlus,
                          color: MyTheme.creamishColor,
                          size: 19,
                        ),
                        label: Text(
                          "Add To Cart",
                          style: TextStyle(
                              color: MyTheme.creamishColor,
                              // fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
