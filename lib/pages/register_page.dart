import 'package:dashdoor/components/my_button.dart';
import 'package:dashdoor/components/my_text_field.dart';
import 'package:flutter/material.dart';


class RegisterPage extends StatefulWidget {
  final Function()? onTap;

  const RegisterPage({super.key,required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final TextEditingController emailcontroller = TextEditingController();

  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confirmpasswordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
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
                    fontSize: 25,
                    color: Theme.of(context).colorScheme.inversePrimary),
                "Let Setup You in A minute"),
            const SizedBox(
              height: 25,
            ),
            //Email Text
            MyTextField(
                controller: emailcontroller,
                hintText: "Email",
                obscureText: false),

            const SizedBox(height: 10),
            //Password Text
            MyTextField(
                controller: passwordcontroller,
                hintText: "Password",
                obscureText: true),

            const SizedBox(height: 10),
            //Password Text
            MyTextField(
                controller: confirmpasswordcontroller,
                hintText: "Confirm Password",
                obscureText: true),
            const SizedBox(height: 30),

            //sign in button
            MyButton(onTap: () {}, text: "Sign Up"),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary)),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text("Lgin now",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,fontWeight: FontWeight.bold)),
                )
              ],
            ),
            //not signed in if so register
          ],
        ),
      ),
    );
}
}