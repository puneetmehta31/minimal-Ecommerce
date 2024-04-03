// ignore_for_file: unused_field, unused_import

import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/product.dart';
import 'package:fooddeliveryapp/pages/cart_page.dart';

class Shop extends ChangeNotifier {
  //products for sale

  final List<Product> _shop = [
    //product 1
    Product(
      name: "Product1",
      price: 99.99,
      description: "Item description",
       imagePath:'assets/1.jpg'
    ),

    //product 2
    Product(
      name: "Product1",
      price: 99.99,
      description: "Item description",
      imagePath:'assets/2.jpg'
    ),

    //produyct 3
    Product(
      name: "Product1",
      price: 99.99,
      description: "Item description",
      imagePath:'assets/3.jpg'
    ),
    //product 4
    Product(
      name: "Product1",
      price: 99.99,
      description: "Item description",
      imagePath:'assets/4.jpg'
    ),
  ];

  //user cart

  List<Product> _cart = [];

  //get product list
  List<Product> get shop => _shop;

  //get user list
  List<Product> get cart => _cart;

  //add item to cart

  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void RemoveFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
