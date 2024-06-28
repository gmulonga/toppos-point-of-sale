import 'package:flutter/material.dart';
import 'package:toppos/Constants/Constants.dart';
import 'package:toppos/Components/ReusableTile.dart';
import 'package:toppos/Screens/UsersPage.dart';

class Creditsales extends StatefulWidget {
  @override
  State<Creditsales> createState() => _CreditsalesState();
}

class _CreditsalesState extends State<Creditsales> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgCream,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 20),
                Text(
                  'Credit Sales',
                  style: TextStyle(color: kLightBlue, fontSize: kTitleFontSize),
                ),
                SizedBox(height: 10),
                Reusabletile(
                  color: kCream,
                  icon: Icons.more_vert,
                  label: 'NGECHA',
                  onPressed: () {
                    return Userspage();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
