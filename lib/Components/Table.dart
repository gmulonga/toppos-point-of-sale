import 'package:flutter/material.dart';
import 'package:toppos/Constants/Constants.dart';

class TableScreen extends StatefulWidget {
  @override
  _TableScreenState createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  final List<String> rows = ['Row 1', 'Row 2', 'Row 3', 'Row 4'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap:
          true, // Important to add this to allow ListView.builder to work inside another scrollable widget
      physics:
          NeverScrollableScrollPhysics(), // Prevents the inner ListView from scrolling
      itemCount: rows.length,
      itemBuilder: (context, index) {
        final row = rows[index];
        final color = index % 2 == 0 ? kCream : kBgCream;
        return Container(
          color: color,
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                row,
                style: TextStyle(fontSize: kNormalFontSize, color: kLightBlue),
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                color: kLightBlue,
                onPressed: () {
                  // Handle the button press here
                  print('Add button pressed on $row');
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
