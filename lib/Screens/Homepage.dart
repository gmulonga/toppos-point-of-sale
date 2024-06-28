import 'package:flutter/material.dart';
import 'package:toppos/Constants/Constants.dart';
import 'package:toppos/Screens/UsersPage.dart';
import 'package:animations/animations.dart';
import 'package:toppos/Screens/Dashboard.dart';
import 'package:toppos/Screens/StoresScreen.dart';
import 'package:toppos/Screens/CreditBalance.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    PageController _myPage = PageController(initialPage: 0);
    return Scaffold(
      backgroundColor: kBgCream,
      extendBody: true,
      floatingActionButton: OpenContainer(
        closedColor: kDarkYellow,
        transitionType: ContainerTransitionType.fade,
        openBuilder: (BuildContext context, VoidCallback _) {
          return Userspage();
        },
        closedElevation: 6.0,
        closedShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(56)),
        ),
        closedBuilder: (BuildContext context, VoidCallback openContainer) {
          return FloatingActionButton(
            onPressed: openContainer,
            backgroundColor: kDarkYellow,
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 6.0,
        shadowColor: kDarkYellow,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 60,
        color: kDarkYellow,
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              iconSize: 30.0,
              padding: EdgeInsets.only(left: 28.0),
              icon: Icon(
                Icons.home,
                color: _selectedIndex == 0 ? kLightBlue : kBgCream,
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 0;
                  _myPage.jumpToPage(0);
                });
              },
            ),
            IconButton(
              iconSize: 30.0,
              padding: EdgeInsets.only(right: 28.0),
              icon: Icon(
                Icons.people,
                color: _selectedIndex == 1 ? kLightBlue : kBgCream,
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 1;
                  _myPage.jumpToPage(1);
                });
              },
            ),
            IconButton(
              iconSize: 30.0,
              padding: EdgeInsets.only(left: 28.0),
              icon: Icon(
                Icons.store,
                color: _selectedIndex == 2 ? kLightBlue : kBgCream,
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 2;
                  _myPage.jumpToPage(2);
                });
              },
            ),
            IconButton(
              iconSize: 30.0,
              padding: EdgeInsets.only(right: 28.0),
              icon: Icon(
                Icons.wallet,
                color: _selectedIndex == 3 ? kLightBlue : kBgCream,
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 3;
                  _myPage.jumpToPage(3);
                });
              },
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _myPage,
        children: <Widget>[
          Dashboard(),
          Userspage(),
          StoresScreen(),
          Creditbalance(),
        ],
        physics: NeverScrollableScrollPhysics(),
      ),
    );
  }
}
