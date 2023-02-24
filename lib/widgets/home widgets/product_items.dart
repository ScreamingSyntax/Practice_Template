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
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Theme.of(context).cardColor,
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: Key(item.id.toString()),
            child: Container(
              height: 150,
              width: 120,
              padding: EdgeInsets.only(top: 20, bottom: 20),
              decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.circular(20)),
              alignment: Alignment.center,
              child: Image.network(
                item.image,
                width: MediaQuery.of(context).size.width / 5,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "${item.name}"
                    .text
                    .color(Theme.of(context).colorScheme.primary)
                    .extraBold
                    .fade
                    .make(),
                "${item.desc}"
                    .text
                    .color(Theme.of(context).colorScheme.secondary)
                    .textStyle(context.captionStyle)
                    .make(),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                        onPressed: null,
                        icon: FaIcon(
                          FontAwesomeIcons.cashRegister,
                          color: Theme.of(context).colorScheme.primary,
                          size: 19,
                        ),
                        label: Text(
                          "Rs ${item.price}",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              // fontWeight: FontWeight.bold,
                              fontSize: 12),
                        )),
                    TextButton.icon(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Theme.of(context).colorScheme.onPrimary)),
                        onPressed: () => print("Test"),
                        icon: FaIcon(
                          FontAwesomeIcons.cartPlus,
                          color: Theme.of(context).colorScheme.onSecondary,
                          size: 19,
                        ),
                        label: Text(
                          "Add To Cart",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSecondary,
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
