import 'package:flutter/material.dart';

class PageSignup extends StatefulWidget {
  @override
  _PageSignupState createState() => _PageSignupState();
}

Widget topArea(BuildContext context) {
  return Expanded(
    child: Center(
      child: Icon(
        Icons.adjust,
        size: 100,
        color: Theme.of(context).primaryColor,
      ),
    ),
  );
}

BorderRadius roundedBorder(double borderSize) {
  return BorderRadius.all(Radius.circular(borderSize));
}

Widget midArea(BuildContext context) {
  return Expanded(
    child: Column(children: [
      TextField(
        decoration: InputDecoration(
            labelText: "Username",
            border: OutlineInputBorder(borderRadius: roundedBorder(4))),
      ),
      SizedBox(height: 10),
      TextField(
        decoration: InputDecoration(
            labelText: "Password",
            border: OutlineInputBorder(borderRadius: roundedBorder(4))),
      ),
      SizedBox(height: 10),
      TextField(
        decoration: InputDecoration(
            labelText: "Confirm Password",
            border: OutlineInputBorder(borderRadius: roundedBorder(4))),
      ),
    ]),
  );
}

Widget bottomArea(BuildContext context) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              padding: EdgeInsets.all(12),
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(borderRadius: roundedBorder(8)),
              child: Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    ),
  );
}

class _PageSignupState extends State<PageSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              topArea(context),
              midArea(context),
              bottomArea(context),
            ],
          ),
        ),
      ),
    );
  }
}
