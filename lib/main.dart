import 'package:dashdoor/Auth/login_or_regsiter.dart';
import 'package:dashdoor/Models/resturent.dart';
import 'package:dashdoor/firebase_options.dart';
import 'package:dashdoor/themes/theme_switcher.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (create) => ThemeSwitcher()),
      ChangeNotifierProvider(create: (create) => Resturent()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of my app.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegsiter(),
      theme: Provider.of<ThemeSwitcher>(context).themeData,
    );
  }
}
