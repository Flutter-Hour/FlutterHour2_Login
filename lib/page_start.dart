import 'package:flutter/material.dart';

class PageStart extends StatefulWidget {
  @override
  _PageStartState createState() => _PageStartState();
}

Widget topArea(BuildContext context) {
  return Expanded(
    child: Center(
      child: Icon(
        Icons.adjust,
        size: 100,
        color: Colors.white,
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
      padding: const EdgeInsets.only(bottom: 100),
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
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              padding: EdgeInsets.all(12),
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: roundedBorder(8)),
              child: Text(
                "Login",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
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

class _PageStartState extends State<PageStart> {
  @override
  Widget build(BuildContext context) {
    var url =
        "http://www.extremos.com.br/noticia/2016/1129_as_10_montanhas_mais_escaladas_do_mundo/foto/himalaya.jpg";

    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(url),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              color: Colors.red.withOpacity(0.9),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  topArea(context),
                  bottomArea(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
