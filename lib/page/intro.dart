import 'package:flutter/material.dart';
import 'package:rakin_test/page/register.dart';
import '../component/textStyle.dart';
import 'login.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: height*.1,
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
                  height: height*.1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
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
                      width: width*.1,
                    ),
                    SizedBox(
                      width: 200,
                      height: 60,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                                return Register();
                              }));
                        },
                        color: Colors.deepOrange,
                        child: Text(
                          "Register",
                          style: bigButtonText,
                        ),
                      ),
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
