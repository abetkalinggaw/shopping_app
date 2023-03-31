import 'package:flutter/material.dart';
import 'package:shopping_app/class/product_cart.dart';
import 'package:shopping_app/screens/cart/components/cart_item.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  List<ProductCart> productCart = [];

  Map<int, int> quantityMap = {};
  int deliveryCharge = 20000;

  num getSubTotal() {
    num subTotal = 0;

    List<ProductCart> cartItems =
        productCart.where((p) => quantityMap[p.id]! > 0).toList();
    for (ProductCart p in cartItems) {
      int id = p.id;
      int quantity = quantityMap[id]!;
      subTotal += p.price * quantity;
    }
    return subTotal;
  }

  num getTotal() {
    return getSubTotal() + deliveryCharge;
  }

  void _incrementQuantity(int id) {
    quantityMap[id] = (quantityMap[id] ?? 0) + 1;
    setState(() {});
  }

  void _decrementQuantity(int id) {
    if (quantityMap[id]! > 1) {
      quantityMap[id] = quantityMap[id]! - 1;
      setState(() {});
    } else {
      quantityMap[id] = 0;
      setState(() {});
    }
  }

  void _removeAll() {
    setState(() {
      productCart.clear();
      quantityMap.clear();
    });
  }

  @override
  void initState() {
    super.initState();

    productCart.add(
      ProductCart(
          id: 1,
          name: 'KBD67 Lite Mechanical Keyboards',
          weight: 2,
          image: 'assets/img/item_1.jpg',
          price: 2300000),
    );

    productCart.add(
      ProductCart(
          id: 2,
          name: 'Mouse Logitech G-Pro X Superlight',
          weight: 0.3,
          image: 'assets/img/item_2.jpg',
          price: 2099000),
    );

    productCart.add(
      ProductCart(
          id: 4,
          name: 'Dr. Dre "The Chronic" - Vinyl',
          weight: 1,
          image: 'assets/img/item_9.jpg',
          price: 2710000),
    );

    for (ProductCart p in productCart) {
      quantityMap[p.id] = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Shopping Cart',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: productCart.length,
                itemBuilder: (context, index) {
                  int id = productCart[index].id;
                  return quantityMap[id]! > 0
                      ? CartItem(
                          product: productCart[index],
                          quantity: quantityMap[id]!,
                          incrementQuantity: () => _incrementQuantity(id),
                          decrementQuantity: () => _decrementQuantity(id),
                        )
                      : const SizedBox.shrink();
                },
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Total',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Rp${getSubTotal()}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Delivery Charge',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Rp$deliveryCharge',
                          style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Sub Total',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "Rp ${getTotal()}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    MaterialButton(
                      onPressed: () => _removeAll(),
                      color: Colors.black,
                      height: 60,
                      minWidth: double.maxFinite,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'PROCEED TO CHECKOUT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
