import 'package:flutter/material.dart';
import 'package:toppos/Constants/Constants.dart';

class Userspage extends StatefulWidget {
  const Userspage({super.key});

  @override
  State<Userspage> createState() => _UserspageState();
}

class _UserspageState extends State<Userspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgCream,
      body: Center(
        child: Text('Users Screen'),
      ),
    );
  }
}
