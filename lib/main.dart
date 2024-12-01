import 'package:dashdoor/Auth/login_or_regsiter.dart';
import 'package:dashdoor/pages/login_page.dart';
import 'package:dashdoor/pages/my_address_api.dart';
import 'package:dashdoor/pages/register_page.dart';
import 'package:dashdoor/themes/theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (create) => ThemeSwitcher(),
  child: const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const LoginOrRegsiter(),
      theme:  Provider.of<ThemeSwitcher>(context).themeData,
    );
  }
}
