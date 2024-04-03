import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            DrawerHeader(
                child: Center(
              child: Icon(
                Icons.shopping_bag,
                size: 72,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            )),

            const SizedBox(height: 25),
            //shop tile
            MyListTile(
                text: "Home",
                icon: Icons.home,
                onTap: () {
                  //pop drawer first
                  Navigator.pop(context);

                  // go to cart page
                  // Navigator.pushNamed(context, '/cart_page');
                }),

            //cart tile
            MyListTile(
                text: "Cart",
                icon: Icons.shopping_cart,
                onTap: () {
                  //pop drawer first
                  Navigator.pop(context);

                  //go to cart page
                  Navigator.pushNamed(context, '/cart_page');
                }),
          ]),

          //drawer header

          //exit
          MyListTile(
              text: "Exit",
              icon: Icons.logout,
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, '/intro_page', (route) => false))
        ],
      ),
    );
  }
}
