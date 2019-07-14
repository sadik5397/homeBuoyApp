import 'package:flutter/material.dart';
import '../component/textStyle.dart';
import '../component/colors.dart';
import '../component/function.dart';
import 'registerCheckOut.dart';

class RegisterTermsConditions extends StatefulWidget {
  @override
  _RegisterTermsConditionsState createState() =>
      _RegisterTermsConditionsState();
}

class _RegisterTermsConditionsState extends State<RegisterTermsConditions> {
  @override
  Widget build(BuildContext context) {
    //Default Values
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    bool tncAccepted = false;

    //API data
    var hotelLogo =
        "https://avatars0.githubusercontent.com/u/46283609?s=280&v=4";
    var tnc =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

    //State Management
    void tncCheck(bool value) {
      setState(() {
        tncAccepted = value;
      });
    }

    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                //Left Side
                leftSide(hotelLogo, width, height, context),

                //Right Side
                Container(
                  width: MediaQuery.of(context).size.width * .5,
                  color: Colors.grey.shade50,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: <Widget>[
                      SizedBox(
                        width: width* .35,
                        child: Image.asset(
                          "lib/img/busyMan.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      ListView(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Register",
                                  style: heading,
                                ),
                                Divider(
                                  color: homebuoyColor,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Terms & Conditions",
                                  style: subHeading,
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Container(child: Text(tnc, style: tncStyle)),
                                SizedBox(height: 20),
                                Row(
                                  children: <Widget>[
                                    Checkbox(
                                      value: tncAccepted,
                                      onChanged: (bool value) {
                                        tncCheck(value);
                                      },
                                    ),
                                    Text(
                                      "I have Read and Accepted the Terms & Conditions",
                                      style: formLabel,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * .05,
                                ),
                                SizedBox(
                                  height: 60,
                                  width: 200,
                                  child: RaisedButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (BuildContext context) {
                                                return RegisterCheckOut();
                                          },
                                        ),
                                      );
                                    },
                                    color: homebuoyColor,
                                    child: Text(
                                      "NEXT",
                                      style: bigButtonText,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          poweredBy(width),
        ],
      ),
    );
  }
}
