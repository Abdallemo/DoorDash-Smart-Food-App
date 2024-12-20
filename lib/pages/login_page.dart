import 'package:dashdoor/components/my_button.dart';
import 'package:dashdoor/components/my_text_field.dart';
import 'package:dashdoor/pages/home_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget {
  void Function()? onTap;

  LoginPage({super.key,required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  void login()
  {


    //** goin to the home page after Auth
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage(),));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo will but here if found lol
            Image.asset('lib/images/logo/Animation - 1733579760946.gif'),
            const SizedBox(
              height: 25,
            ),
            //message name
            Text(
                style: TextStyle(
                    fontSize: 25,
                    color: Theme.of(context).colorScheme.inversePrimary),
                "Door Dash Fast Delivery"),
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
            const SizedBox(height: 30),

            //sign in button
            MyButton(text: "Sign in", onTap: login),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member?",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary)),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text("Resister now",
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
