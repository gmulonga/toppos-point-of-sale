import 'package:flutter/material.dart';
import 'package:toppos/Constants/Constants.dart';

class StoresScreen extends StatefulWidget {
  @override
  State<StoresScreen> createState() => _StoresScreenState();
}

class _StoresScreenState extends State<StoresScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgCream,
      body: Center(
        child: Text('Stores Screen'),
      ),
    );
  }
}
