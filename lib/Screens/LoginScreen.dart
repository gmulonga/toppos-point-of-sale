import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('login'),
    );
  }
}
