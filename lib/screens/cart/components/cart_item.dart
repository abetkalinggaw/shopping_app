import 'package:flutter/material.dart';
import 'package:shopping_app/class/product_cart.dart';

class CartItem extends StatelessWidget {
  final ProductCart product;
  final int quantity;
  final VoidCallback incrementQuantity;
  final VoidCallback decrementQuantity;

  const CartItem({
    Key? key,
    required this.product,
    required this.quantity,
    required this.incrementQuantity,
    required this.decrementQuantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[100],
      ),
      child: Row(
        children: <Widget>[
          Container(
            height: 90,
            width: 90,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset(
              product.image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 180,
                  child: Text(
                    product.name,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: 180,
                  child: Text(
                    'Rp${product.price}',
                    style: TextStyle(fontSize: 14, color: Colors.grey[500]),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: decrementQuantity,
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.grey[500],
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Icon(
                          Icons.remove,
                          color: Colors.black,
                          size: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        '$quantity',
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    GestureDetector(
                      onTap: incrementQuantity,
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "Rp${product.price * quantity}",
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
