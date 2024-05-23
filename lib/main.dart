import 'package:flutter/material.dart';
import 'package:shop_app/pages/cart_item_page.dart';
import 'package:shop_app/pages/detail_item_page.dart';
import 'package:shop_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/detail_item': (context) => const DetailItemPage(),
        '/cart': (context) => const CartItemPage(),
      },
    );
  }
}
