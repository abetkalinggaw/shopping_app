import 'package:flutter/material.dart';
import 'package:shopping_app/screens/cart/components/cart_view.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cartAppBar(context),
      body: const CartView(),
    );
  }

  static cartAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.chevron_left_rounded),
        color: Colors.black,
        iconSize: 26,
        onPressed: () {
          Navigator.pop(context, '/');
        },
      ),
    );
  }
}
