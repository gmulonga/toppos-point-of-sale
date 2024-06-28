import 'package:flutter/material.dart';
import 'package:toppos/Constants/Constants.dart';
import 'package:toppos/Components/ReusableTile.dart';
import 'package:toppos/Screens/UsersPage.dart';

class Creditbalance extends StatefulWidget {
  @override
  State<Creditbalance> createState() => _CreditbalanceState();
}

class _CreditbalanceState extends State<Creditbalance> {
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
                  'Credit Balance',
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
