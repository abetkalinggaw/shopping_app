class ProductCart {
  final int id;
  final String name;
  final double weight;
  final String image;
  final num price;

  ProductCart(
      {required this.id,
      required this.name,
      required this.weight,
      required this.image,
      required this.price});
}

List<ProductCart> productCart = [];
