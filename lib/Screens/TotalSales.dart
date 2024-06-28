import 'package:flutter/material.dart';
import 'package:toppos/Constants/Constants.dart';
import 'package:toppos/Components/Table.dart';

class Totalsales extends StatefulWidget {
  @override
  State<Totalsales> createState() => _TotalsalesState();
}

class _TotalsalesState extends State<Totalsales> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgCream,
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 15, left: 15, top: 15),
                child: Text(
                  'Total Sales Today',
                  style: TextStyle(fontSize: kTitleFontSize, color: kLightBlue),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: TableScreen(),
              )
            ],
          )
        ],
      ),
    );
  }
}
