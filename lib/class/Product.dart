class Product {
  final int id;
  final String name;
  final double weight;
  final String image;
  final num price;

  Product(
      {required this.id,
      required this.name,
      required this.weight,
      required this.image,
      required this.price});
}

List<Product> products = [
  Product(
      id: 1,
      name: 'KBD67 Lite Mechanical Keyboards',
      weight: 2,
      image: 'assets/img/item_1.jpg',
      price: 2300000),
  Product(
      id: 2,
      name: 'Mouse Logitech G-Pro X Superlight',
      weight: 0.3,
      image: 'assets/img/item_2.jpg',
      price: 2099000),
  Product(
      id: 3,
      name: 'Audio Technica M70X',
      weight: 1,
      image: 'assets/img/item_3.jpg',
      price: 3300000),
  Product(
      id: 4,
      name: 'Apple Homepod Mini',
      weight: 1,
      image: 'assets/img/item_4.jpg',
      price: 1710000),
  Product(
      id: 5,
      name: 'Apple Macbook Pro 14" M1-Pro',
      weight: 2,
      image: 'assets/img/item_5.jpg',
      price: 28100000),
  Product(
      id: 6,
      name: 'Apple Airpods Pro',
      weight: 0.5,
      image: 'assets/img/item_6.jpg',
      price: 2894000),
  Product(
      id: 7,
      name: 'Apple Iphone 12 Pro',
      weight: 1,
      image: 'assets/img/item_7.jpg',
      price: 13710000),
  Product(
      id: 8,
      name: 'Keycaps Artisan - Ocean',
      weight: 0.1,
      image: 'assets/img/item_8.jpg',
      price: 510000),
  Product(
      id: 9,
      name: 'Dr. Dre "The Chronic" - Vinyl',
      weight: 0.1,
      image: 'assets/img/item_9.jpg',
      price: 2710000),
  Product(
      id: 9,
      name: 'Audio Technica AT2020 - Mic Condenser',
      weight: 3,
      image: 'assets/img/item_10.jpg',
      price: 1410000),
  Product(
      id: 9,
      name: 'HARMAN KARDON - Onyx Studio 3',
      weight: 5,
      image: 'assets/img/item_11.jpg',
      price: 2659000),
  Product(
      id: 9,
      name: 'Apple Watch Series 7 2021 45mm',
      weight: 0.2,
      image: 'assets/img/item_12.jpg',
      price: 2710000),
];
