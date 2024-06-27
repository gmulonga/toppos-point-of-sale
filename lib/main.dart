import 'package:flutter/material.dart';
import 'package:toppos/Screens/Homepage.dart';
import 'package:toppos/Screens/LoginScreen.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Loginscreen(),
        '/homePage': (context) => Homepage(),
      },
    );
  }
}
