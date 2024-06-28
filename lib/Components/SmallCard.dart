import 'package:flutter/material.dart';
import 'package:toppos/Constants/Constants.dart';
import 'package:animations/animations.dart';

class Smallcard extends StatefulWidget {
  Smallcard({
    required this.color,
    required this.icon,
    required this.label,
    required this.total,
    required this.onPressed,
  });

  final String label;
  final IconData icon;
  final Color color;
  final String total;
  final Widget Function() onPressed;

  @override
  State<Smallcard> createState() => _SmallcardState();
}

class _SmallcardState extends State<Smallcard> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                      ),
                    ],
                  ),
                  Text(
                    widget.label,
                    style:
                        TextStyle(color: kLightBlue, fontSize: kNormalFontSize),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
