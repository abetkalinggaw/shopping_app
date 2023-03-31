import 'package:flutter/material.dart';
import 'package:shopping_app/class/Product.dart';
import 'package:shopping_app/screens/home/components/item_card.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'New Arrivals',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                ),
              ),
              GridView.count(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 3,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                mainAxisSpacing: 26,
                crossAxisSpacing: 10,
                childAspectRatio: 0.5,
                children: List.generate(
                  products.length,
                  (index) => ItemCard(
                    product: products[index],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: SizedBox(
            width: 70,
            height: 70,
            child: FloatingActionButton(
              elevation: 0,
              backgroundColor: Colors.black,
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              },
              child: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
                size: 26,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
