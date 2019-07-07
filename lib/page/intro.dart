import 'package:flutter/material.dart';
import '../component/textStyle.dart';
import 'login.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Hero(
                      tag: "hotelLogo",
                      child: FlutterLogo(
                        size: 120,
                      ),
                    ),
                    Text(
                      "Hotel Name",
                      style: hotelName,
                    ),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      width: 200,
                    ),
                    SizedBox(
                      width: 200,
                      height: 60,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (BuildContext context) {
                            return Login();
                          }));
                        },
                        color: Colors.deepOrange,
                        child: Text(
                          "Login",
                          style: bigButtonText,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      height: 60,
                      child: RaisedButton(
                        onPressed: () {},
                        color: Colors.deepOrange,
                        child: Text(
                          "Register",
                          style: bigButtonText,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 50,
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            color: Colors.deepOrange,
            child: Text("Powered by HOMEBUOY", style: homeBuoyFooter,),
          )
        ],
      ),
    );
  }
}
