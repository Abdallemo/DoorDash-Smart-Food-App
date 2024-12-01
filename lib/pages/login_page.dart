import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo will but here if found lol
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 25,
            ),
            //message name
            Text(
                style: TextStyle(
                    fontSize: 26,
                    color: Theme.of(context).colorScheme.inversePrimary),
                "Door Dash Fast Delivery"),

            //Email Text
            TextField()
            //Password Text
            //sign in button

            //not signed in if so register
          ],
        ),
      ),
    );
  }
}
