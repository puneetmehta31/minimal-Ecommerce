

import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/shop.dart';
import 'package:fooddeliveryapp/pages/cart_page.dart';
import 'package:fooddeliveryapp/pages/intro_page.dart';
import 'package:fooddeliveryapp/pages/shop_page.dart';
import 'package:fooddeliveryapp/pages/splash.dart';
import 'package:fooddeliveryapp/themes/light_mode.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splash(),
        theme: lightMode,
        routes: {
          '/intro_page': (context) => const Intropage(),
          '/shop_page': (context) => const ShopPage(),
          '/cart_page': (context) => const CartPage(),
        });
  }
}
