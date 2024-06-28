import 'package:flutter/material.dart';
import 'package:toppos/Components/Logo.dart';
import 'package:toppos/Constants/Constants.dart';
import 'package:toppos/Components/SmallCard.dart';
import 'package:toppos/Components/BigCard.dart';
import 'package:toppos/Components/PieChart.dart';
import 'package:toppos/Screens/UsersPage.dart';
import 'package:toppos/Screens/CreditSales.dart';

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
          child: ListView(
        children: [
          Column(
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
                  style: TextStyle(fontSize: kTitleFontSize, color: kLightBlue),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Container(
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
                  child: PieChartSample(
                    totalCustomers: 200,
                    totalSuppliers: 50,
                    totalProducts: 500,
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
                      onPressed: () {
                        return Userspage();
                      },
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
                      onPressed: () {
                        return Userspage();
                      },
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
                      onPressed: () {
                        return Userspage();
                      },
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
                          onPressed: () {
                            return Creditsales();
                          },
                          color: kCream,
                          icon: Icons.money,
                          navIcon: Icons.arrow_circle_right,
                          label: 'Credit Sales',
                          total: '187,000',
                        ),
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
                              label: 'Total Sales Today',
                              total: '16',
                              onPressed: () {
                                return Userspage();
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Smallcard(
                              color: kCream,
                              icon: Icons.more_vert,
                              label: 'Net Sales',
                              total: '16',
                              onPressed: () {
                                return Userspage();
                              },
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
                              icon: Icons.group,
                              label: 'Customers',
                              total: '16',
                              onPressed: () {
                                return Userspage();
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Smallcard(
                              color: kCream,
                              icon: Icons.more_vert,
                              label: 'Product Categories',
                              total: '16',
                              onPressed: () {
                                return Userspage();
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Bigcard(
                          onPressed: () {
                            return Userspage();
                          },
                          color: kCream,
                          icon: Icons.money,
                          navIcon: Icons.arrow_circle_right,
                          label: 'Paid Credits',
                          total: '187,000',
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}
