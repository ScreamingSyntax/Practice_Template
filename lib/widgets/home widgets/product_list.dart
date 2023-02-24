import 'package:exams_over_practice/pages/home_detail_page.dart';
import 'package:exams_over_practice/widgets/home%20widgets/product_items.dart';
import 'package:flutter/material.dart';

import '../../models/catalog.dart';
import '../themes.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CatalogModel.product1.length,
      itemBuilder: (context, index) {
        return Container(
            margin: EdgeInsets.all(13),
            child: InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          HomeDetailPage(item: CatalogModel.product1[index]),
                    )),
                child: ProductItems(item: CatalogModel.product1[index])));
      },
    );
  }
}
