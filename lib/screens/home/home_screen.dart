import 'package:flutter/material.dart';
import 'package:shopping_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: const Body(),
    );
  }

  static AppBar customAppBar() {
    return AppBar(
      title: const Text('Toko-nya Dia'),
      titleTextStyle: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.favorite_border_outlined),
          color: Colors.black,
          iconSize: 26,
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.notifications_outlined),
          color: Colors.black,
          iconSize: 26,
          onPressed: () {},
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
