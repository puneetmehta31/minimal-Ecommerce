
import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/auth_components/my_button.dart';
import 'package:fooddeliveryapp/auth_components/my_textfield.dart';
import 'package:fooddeliveryapp/auth_components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controllers

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 233, 235),
      body: Column(
        children: [
          const SizedBox(
            height: 35,
          ),

          //logo
          const Icon(
            Icons.shopping_bag,
            size: 100,
            color: Colors.red,
          ),

          const SizedBox(
            height: 30,
          ),

          //welcome back

          const Text(
            'Login to your account ',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 16,
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          //username textfield
          MyTextfield(
            controller: usernameController,
            hintText: 'Username',
            obscureText: false,
          ),

          const SizedBox(
            height: 35,
          ),
          //password textfield
          MyTextfield(
            controller: passwordController,
            hintText: 'Password',
            obscureText: true,
          ),
          
          const SizedBox(
            height: 5,
          ),
          //forgot password

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.grey,
                  fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 30,
          ),

          //sign in button
          MyButton(
            onTap: signUserIn,
          ),

          const SizedBox(
            height: 30,
          ),

          //or continue with

          const Row(
            children: [
              Expanded(
                  child: Divider(
                thickness: 0.5,
                color: Colors.grey,
              )),
              Text('Continue with',
                  style: TextStyle(
                    color: Colors.grey,
                  )),
              Expanded(
                  child: Divider(
                thickness: 0.5,
                color: Colors.grey,
              ))
            ],
          ),

          const SizedBox(height: 30,),

          //google -apple sign in buttons

          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //AppleButton
              SquareTile(imagePath: 'lib/images/apple-logo.png'),

           SizedBox(width: 10,),
              //GoogleButton
              SquareTile(imagePath: 'lib/auth_images/google.png'),
            ],
          ),

          const SizedBox(height: 10,),

          //not a member ? register now
         const Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
          Text('Not a Member?'),
          SizedBox(width: 4,),
           Text('Register Now',
           style: TextStyle(
            color: Colors.blue,fontWeight: FontWeight.bold
           ),),

         ],)
        ],
      ),
    );
  }
}
