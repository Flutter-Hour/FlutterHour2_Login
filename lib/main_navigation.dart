import 'package:flutter/material.dart';
import 'package:flutter_hour_2/page_login.dart';
import 'package:flutter_hour_2/page_signup.dart';
import 'package:flutter_hour_2/page_start.dart';

class MainNavigation extends StatefulWidget {
  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  PageController pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: 1);
  }

  void navigate() {
    pageController.animateToPage(
      0,
      duration: Duration(milliseconds: 800),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: <Widget>[
        PageSignup(),
        PageStart(),
        PageLogin(),
        Container(
          child: Center(
            child: RaisedButton(
              child: Text("Eu vou navegar 🎶"),
              onPressed: navigate,
            ),
          ),
        ),
      ],
    );
  }
}
