class CatalogModel {
  static final product1 = [
    Item(
        id: "Foe001",
        name: "Poco X3 Pro",
        desc: "6/128 GB with 120HZ display",
        price: 30000,
        color: "Blue",
        image: "https://m.media-amazon.com/images/I/31f1QZweeuL.jpg")
  ];

  static final product2 = [
    Item(
        id: "Foe002",
        name: "Redmi Note 8 pro",
        desc: "6/64",
        color: "Deep Purple",
        price: 23000,
        image: "https://m.media-amazon.com/images/I/81dFFSBIpxL._SY606_.jpg")
  ];
  static final product3 = [
    Item(
        id: "Foe003",
        name: "Redmi 3s",
        desc: "4/64",
        color: "Coffee",
        price: 20000,
        image: "https://m.media-amazon.com/images/I/611jN6O5AbL._SY606_.jpg")
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;
  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
