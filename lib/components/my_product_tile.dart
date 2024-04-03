// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:fooddeliveryapp/models/product.dart';
import 'package:fooddeliveryapp/models/shop.dart';
import 'package:provider/provider.dart';

class MyProdutTile extends StatelessWidget {
  Product product;
  MyProdutTile({
    super.key,
    required this.product,
  });

  // add to cart buttn pressed

  void addToCart(BuildContext context) {
    //show a dialog box to ask user to confirm to add to cart

    showDialog(
        context: context,
        builder: (context) =>
            AlertDialog(content: Text("Add this Item To your cart "), actions: [
              //cancel button
              MaterialButton(
                onPressed: () => Navigator.pop(context),
                child: Text("cancel"),
              ),

              //yes Button
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);

                  context.read<Shop>().addToCart(product);
                },
                child: Text("Yes"),
              )
            ]));
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      width: 300,
      // ignore: duplicate_ignore
      // ignore: prefer_const_constructors
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          //product image

          Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: double.infinity,
                    padding: const EdgeInsets.all(25),
                    child: Image.asset(product.imagePath)
                    ),
              ),

              const SizedBox(height: 25),

              //product name
              Text(
                product.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),

          //product description
          Text(
            product.description,
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          //prdouct price + add to cart button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$ ' + product.price.toStringAsFixed(2)),

              // add to cart button

              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  onPressed: () => addToCart(context),
                  icon: Icon(Icons.add),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
