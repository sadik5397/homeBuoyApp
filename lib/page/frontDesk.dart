import 'package:flutter/material.dart';

class FrontDesk extends StatefulWidget {
  @override
  _FrontDeskState createState() => _FrontDeskState();
}

class _FrontDeskState extends State<FrontDesk> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
            "Front Desk",
          )),
    );
  }
}
