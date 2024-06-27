import 'package:flutter/material.dart';
import 'package:toppos/Constants/Constants.dart';
import 'package:toppos/Components/InputField.dart';

class Loginscreen extends StatefulWidget {
  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgCream,
      body: SafeArea(
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                children: [
                  Image(
                    image: AssetImage('images/logo.png'),
                    height: 200,
                    width: 200,
                  ),
                  InputField(
                    label: 'Email',
                    onChanged: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                  ),
                  InputField(
                    label: 'Password',
                    password: true,
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
