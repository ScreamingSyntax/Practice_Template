import 'package:exams_over_practice/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      elevation: 2.0,
      child: ListTile(
        leading: Image.network(
          item.image,
          height: MediaQuery.of(context).size.width * 1,
          width: MediaQuery.of(context).size.width * 0.1,
        ),
        title: Text(item.name),
        subtitle: Text(item.desc),
        tileColor: Colors.white,
        trailing: Text(
          "Rs ${item.price}",
          textScaleFactor: 1.2,
          style:
              TextStyle(fontWeight: FontWeight.w500, color: Colors.deepPurple),
        ),
      ),
    );
  }
}
