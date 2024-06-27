import 'package:flutter/material.dart';
import 'package:toppos/Constants/Constants.dart';

class Smallcard extends StatefulWidget {
  Smallcard({
    required this.color,
    required this.icon,
    required this.label,
    required this.total,
  });

  final String label;
  final IconData icon;
  final Color color;
  final String total;

  @override
  State<Smallcard> createState() => _SmallcardState();
}

class _SmallcardState extends State<Smallcard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.total,
                    style: TextStyle(fontSize: 20, color: kLightBlue),
                  ),
                  Icon(
                    widget.icon,
                    size: 30,
                    color: kLightBlue,
                  )
                ],
              ),
              Text(
                widget.label,
                style: TextStyle(color: kLightBlue),
              )
            ],
          ),
        ),
      ),
    );
  }
}
