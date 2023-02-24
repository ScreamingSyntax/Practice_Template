import 'package:flutter/material.dart';

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
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rs ${item.price.toString()}',
                      style: TextStyle(
                          color: MyTheme.bluishColor,
                          fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: () => print("Hello"),
                      child: Text("Buy"),
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(StadiumBorder())),
                    )
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
