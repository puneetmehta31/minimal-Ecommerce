import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/components/my_drawer.dart';
import 'package:fooddeliveryapp/components/my_product_tile.dart';
import 'package:fooddeliveryapp/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Shop Page"),
          actions: [
            //go to cart button 
          IconButton(onPressed: ()=>Navigator.pushNamed(context, '/cart_page'), icon: const Icon(Icons.shopping_cart))

          ],
        ),
        drawer: const MyDrawer(),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            //shop subtitle

            // ignore: prefer_const_constructors
            Center(
                child: Text(
              "Pick from a Premium Proudct ",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            )),

            //product list
            SizedBox(
              height: 550,
              child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
                itemBuilder: (context, index) {
                  //get each individual product from shop
                  final product = products[index];

                  // return as a product title UI
                  return MyProdutTile(product: product);
                },
              ),
            ),
          ],
        ));
  }
}
