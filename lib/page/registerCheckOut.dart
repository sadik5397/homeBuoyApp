import 'package:flutter/material.dart';
import '../component/textStyle.dart';
import '../component/colors.dart';
import '../component/function.dart';
import '../page/registerReview.dart';

class RegisterCheckOut extends StatefulWidget {
  @override
  _RegisterCheckOutState createState() => _RegisterCheckOutState();
}

class _RegisterCheckOutState extends State<RegisterCheckOut> {
  @override
  Widget build(BuildContext context) {
    //Default Values
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    //API data
    var hotelLogo =
        "https://avatars0.githubusercontent.com/u/46283609?s=280&v=4";

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
                          Container(
                            child: Padding(
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
                                    "Checkout Time",
                                    style: subHeading,
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        width: width * .5 * .25,
                                        child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          autofocus: false,
                                          style: formData,
                                          decoration: InputDecoration(
                                            labelText: "Day",
                                            hintText: DateTime.now().day.toString(),
                                            labelStyle: formLabel,
                                            hintStyle: formHelper,
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      SizedBox(
                                        width: width * .5 * .25,
                                        child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          style: formData,
                                          decoration: InputDecoration(
                                            labelText: "Month",
                                            hintText: DateTime.now().month.toString(),
                                            labelStyle: formLabel,
                                            hintStyle: formHelper,
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          style: formData,
                                          decoration: InputDecoration(
                                            labelText: "Year",
                                            hintText: DateTime.now().year.toString(),
                                            labelStyle: formLabel,
                                            hintStyle: formHelper,
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        width: width * .5 * .4,
                                        child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          style: formData,
                                          decoration: InputDecoration(
                                            labelText: "Hour",
                                            hintText: DateTime.now().hour.toString(),
                                            labelStyle: formLabel,
                                            hintStyle: formHelper,
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          style: formData,
                                          decoration: InputDecoration(
                                            labelText: "Minute",
                                            hintText: DateTime.now().minute.toString(),
                                            labelStyle: formLabel,
                                            hintStyle: formHelper,
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
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
                                                  return RegisterReview();
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
                            ),
                          ),
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
