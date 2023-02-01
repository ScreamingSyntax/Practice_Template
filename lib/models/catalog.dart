class Item {
  final String? id;
  final String? name;
  final String? desc;
  final num? price;
  final String? color;
  final String? image;

  Item({this.id, this.name, this.desc, this.price, this.color});
}

final products = Item(
  id: "Foe001",
  name: "Poco X3 Pro",
  desc: "120 HZ 6GB Ram 128GB Internal Storage",
  price: 30000,
  color: "Blue",
);
