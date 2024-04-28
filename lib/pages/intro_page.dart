import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/components/my_button.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon
            (Icons.shopping_bag,
            size: 72,
            color: Theme.of(context).colorScheme.inversePrimary,
            ),
            
          const SizedBox(height: 25),

            //title
            const Text(
              "MINI SHOP",
              style: TextStyle
              (
              fontWeight: FontWeight.bold,
              fontSize: 20,
              ),),
        
            const SizedBox(height: 10),
            //subtitle

            Text(
              "GENUINE AND PREMIUM",
               style: TextStyle(
               color: Theme.of(context).colorScheme.inversePrimary
               ),),
        
        
        const SizedBox(height:25),
        
            //button
        // ignore: prefer_const_constructors
        MyButton(onTap: () => Navigator.pushNamed(context, '/login_page'), 
        child: Icon(Icons.arrow_forward))
        
            
          ],
        ),
      ),
    );
  }
}