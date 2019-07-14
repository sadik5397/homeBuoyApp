import 'package:flutter/material.dart';
import '../component/textStyle.dart';
import '../component/colors.dart';
import '../component/function.dart';
import '../page/registerTermsCondition.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    //Default Values
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    //API data
    var hotelLogo =
        "https://avatars0.githubusercontent.com/u/46283609?s=280&v=4";

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  //Left Side
                  leftSide(hotelLogo, width, height, context),
                  //Right Side
                  Container(
                    width: width * .5,
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
                                    "Basic Info",
                                    style: subHeading,
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  TextFormField(
                                    keyboardType: TextInputType.text,
                                    style: formData,
                                    autofocus: true,
                                    decoration: InputDecoration(
                                      labelText: "Your Name",
                                      hintText: "e.g.: John Doe",
                                      labelStyle: formLabel,
                                      hintStyle: formHelper,
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  TextFormField(
                                    keyboardType: TextInputType.text,
                                    style: formData,
                                    decoration: InputDecoration(
                                      labelText: "Physical Address",
                                      hintText: "128, Sydney",
                                      labelStyle: formLabel,
                                      hintStyle: formHelper,
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  TextFormField(
                                    keyboardType: TextInputType.number,
                                    style: formData,
                                    decoration: InputDecoration(
                                      labelText: "Mobile Number",
                                      hintText: "e.g.: +891 125 8887",
                                      labelStyle: formLabel,
                                      hintStyle: formHelper,
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    style: formData,
                                    decoration: InputDecoration(
                                      labelText: "Your Email",
                                      hintText: "e.g.: homebuoy@gmail.com",
                                      labelStyle: formLabel,
                                      hintStyle: formHelper,
                                      border: OutlineInputBorder(),
                                    ),
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
                                          return RegisterTermsConditions();
                                        }));
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
      ),
    );
  }
}
