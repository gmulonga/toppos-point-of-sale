import 'package:flutter/material.dart';
import 'package:toppos/Constants/Constants.dart';
import 'package:animations/animations.dart';

class Bigcard extends StatefulWidget {
  Bigcard({
    required this.color,
    required this.icon,
    required this.label,
    required this.total,
    required this.navIcon,
    required this.onPressed,
  });

  final String label;
  final IconData icon;
  final IconData navIcon;
  final Color color;
  final String total;
  final Widget Function() onPressed;

  @override
  State<Bigcard> createState() => _BigcardState();
}

class _BigcardState extends State<Bigcard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.total,
                    style: TextStyle(color: kLightBlue, fontSize: 28),
                  ),
                  Icon(
                    widget.icon,
                    size: 50,
                    color: kLightBlue,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.label,
                        style: TextStyle(
                            fontSize: kNormalFontSize, color: kLightBlue),
                      ),
                      Icon(
                        widget.navIcon,
                        size: 30,
                        color: kLightBlue,
                      ),
                    ],
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
