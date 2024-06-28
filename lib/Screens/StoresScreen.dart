import 'package:flutter/material.dart';
import 'package:toppos/Constants/Constants.dart';
import 'package:toppos/Components/ReusableTile.dart';
import 'package:toppos/Screens/UsersPage.dart';

class StoresScreen extends StatefulWidget {
  @override
  State<StoresScreen> createState() => _StoresScreenState();
}

class _StoresScreenState extends State<StoresScreen> {
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
                  'Stores',
                  style: TextStyle(color: kLightBlue, fontSize: kTitleFontSize),
                ),
                SizedBox(height: 10),
                Reusabletile(
                  color: kCream,
                  icon: Icons.more_vert,
                  label: 'Voi',
                  onPressed: () {
                    return Userspage();
                  },
                ),
                Reusabletile(
                  color: kCream,
                  icon: Icons.more_vert,
                  label: 'Utawala',
                  onPressed: () {
                    return Userspage();
                  },
                ),
                Reusabletile(
                  color: kCream,
                  icon: Icons.more_vert,
                  label: 'Fashion',
                  onPressed: () {
                    return Userspage();
                  },
                ),
                Reusabletile(
                  color: kCream,
                  icon: Icons.more_vert,
                  label: 'CBD',
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
