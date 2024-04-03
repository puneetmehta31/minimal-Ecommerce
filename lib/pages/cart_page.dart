import "package:flutter/material.dart";
import "package:fooddeliveryapp/components/my_button.dart";
// ignore: unused_import
import "package:fooddeliveryapp/components/my_drawer.dart";
import "package:fooddeliveryapp/models/product.dart";
import "package:fooddeliveryapp/models/shop.dart";
import "package:provider/provider.dart";

class CartPage extends StatelessWidget {
  const CartPage({super.key});

//remove item from cart method

  void removeItemFromCart(BuildContext context, Product product) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                content: Text("Remove this Item To your cart "),
                actions: [
                  //cancel button
                  MaterialButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text("cancel"),
                  ),

                  //yes Button
                  MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);

                      context.read<Shop>().RemoveFromCart(product);
                    },
                    child: Text("Yes"),
                  ),
                ]));

    //get access to this cart
    // final cart = context.watch<Shop>().cart;
  }

//USER PRESSED THE PAY BUTTON
  void payButtonPressed(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              content: Text("User wants to pay , Connect This App"),
            ));
  }

  @override
  Widget build(BuildContext context) {
    //widget build to th e cart

    // ignore: unused_local_variable
    final cart = context.watch<Shop>().cart;
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Cart Page"),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          //cart list

          Expanded(
            child: cart.isEmpty?
            Center(child: const Text ("Your cart is empty.....")) :ListView.builder(
                itemCount: cart.length,
                itemBuilder: (context, index) {
                  //get individual items in the cart
                  final item = cart[index];

                  //return as a XCart tile UI
                  return ListTile(
                    title: Text(item.name),
                    subtitle: Text(item.price.toStringAsFixed(2)),
                    trailing: IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () => removeItemFromCart(context, item),
                    ),
                  );
                }),
          ),
          //pay button
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: MyButton(onTap: ()=> payButtonPressed(context) , child: const Text("PAY NOW")),
          ),
        ],
      ),
    );
  }
}
