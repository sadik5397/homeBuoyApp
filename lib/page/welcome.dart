//welcome.dart
import 'package:flutter/material.dart';
import '../component/textStyle.dart';
import 'intro.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Text(
                "Welcome",
                style: welcome,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Tap to Unlock",
                style: welcomeSubtitle,
              ),
              SizedBox(
                height: 50,
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Intro();
                  }));
                },
                icon: Icon(
                  Icons.keyboard_arrow_up,
                ),
                iconSize: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
