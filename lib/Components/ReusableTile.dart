import 'package:flutter/material.dart';
import 'package:toppos/Constants/Constants.dart';
import 'package:animations/animations.dart';

class Reusabletile extends StatefulWidget {
  Reusabletile({
    required this.color,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  final String label;
  final IconData icon;
  final Color color;
  final Widget Function() onPressed;

  @override
  State<Reusabletile> createState() => _ReusabletileState();
}

class _ReusabletileState extends State<Reusabletile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15, left: 15, bottom: 10),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(kRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: OpenContainer(
          closedColor: kCream,
          transitionType: ContainerTransitionType.fade,
          openBuilder: (BuildContext context, VoidCallback _) {
            return widget.onPressed();
          },
          closedElevation: 6.0,
          closedShape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          closedBuilder: (BuildContext context, VoidCallback openContainer) {
            return InkWell(
              onTap: openContainer,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.label,
                      style: TextStyle(
                          color: kLightBlue, fontSize: kNormalFontSize),
                    ),
                    Icon(
                      widget.icon,
                      size: 30,
                      color: kLightBlue,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
