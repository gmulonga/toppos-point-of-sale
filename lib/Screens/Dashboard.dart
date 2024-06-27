import 'package:flutter/material.dart';
import 'package:toppos/Components/Logo.dart';
import 'package:toppos/Constants/Constants.dart';
import 'package:toppos/Components/SmallCard.dart';
import 'package:toppos/Components/BigCard.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgCream,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: kHorizontalPadding, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.notifications_rounded,
                    color: kLightBlue,
                  ),
                  Hero(
                    tag: 'logo',
                    child: Logo(height: 36, width: 50),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Text(
                'Dashboard',
                style: TextStyle(fontSize: kNormalFontSize, color: kLightBlue),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                  color: kLightYellow,
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
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: kHorizontalPadding, vertical: 25),
              child: Row(children: [
                Expanded(
                  child: Smallcard(
                    color: kCream,
                    icon: Icons.more_vert,
                    label: 'Sales',
                    total: '1.7M',
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Smallcard(
                    color: kCream,
                    icon: Icons.more_vert,
                    label: 'Suppliers',
                    total: '6',
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Smallcard(
                    color: kCream,
                    icon: Icons.more_vert,
                    label: 'Products',
                    total: '16',
                  ),
                ),
              ]),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Bigcard(
                          color: kCream,
                          icon: Icons.money,
                          navIcon: Icons.arrow_circle_right,
                          label: 'Credit Sales',
                          total: '187,000'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Smallcard(
                            color: kCream,
                            icon: Icons.more_vert,
                            label: 'Products',
                            total: '16',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Smallcard(
                            color: kCream,
                            icon: Icons.more_vert,
                            label: 'Products',
                            total: '16',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: kHorizontalPadding, vertical: 25),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Smallcard(
                            color: kCream,
                            icon: Icons.more_vert,
                            label: 'Products',
                            total: '16',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Smallcard(
                            color: kCream,
                            icon: Icons.more_vert,
                            label: 'Products',
                            total: '16',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Bigcard(
                          color: kCream,
                          icon: Icons.money,
                          navIcon: Icons.arrow_circle_right,
                          label: 'Credit Sales',
                          total: '187,000'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
