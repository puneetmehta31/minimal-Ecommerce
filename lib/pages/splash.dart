import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/pages/intro_page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
      () => Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Intropage(),
    ),
  ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      // ignore: avoid_unnecessary_containers
      child: Container(
        //logo 
        
        child: const Icon(Icons.shopping_bag,
        size: 134,),
      
      ),
    );

  }
}