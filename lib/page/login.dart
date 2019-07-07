import 'package:flutter/material.dart';
import '../component/textStyle.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * .5,
                height: MediaQuery.of(context).size.width,
                color: Colors.blueGrey,
                padding: EdgeInsets.all(140),
                child: Hero(
                  tag: "hotelLogo",
                  child: FlutterLogo(),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * .5,
                color: Colors.grey.shade50,
              ),
            ],
          )),
          Container(
            height: 50,
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            color: Colors.deepOrange,
            child: Text(
              "Powered by HOMEBUOY",
              style: homeBuoyFooter,
            ),
          ),
        ],
      ),
    );
  }
}
