import 'package:flutter/material.dart';
import '../component/textStyle.dart';
import '../component/colors.dart';
import '../component/function.dart';
import 'app.dart';

class RegisterReview extends StatefulWidget {
  @override
  _RegisterReviewState createState() => _RegisterReviewState();
}

class _RegisterReviewState extends State<RegisterReview> {
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
                  width: MediaQuery.of(context).size.width * .5,
                  color: Colors.grey.shade50,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: <Widget>[
                      SizedBox(
                        width: width * .35,
                        child: Image.asset(
                          "lib/img/busyMan.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Review",
                              style: heading,
                            ),
                            Divider(
                              color: homebuoyColor,
                            ),
                            SizedBox(
                              height: 100,
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  child: Icon(Icons.done_all,
                                      size: 55, color: Colors.green.shade700),
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 2, color: homebuoyColor),
                                  ),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Text(
                                  "Registration Completed!",
                                  style: subHeading,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Rate The Property Your First Impression",
                                  style: subHeading,
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.star_border,
                                      size: 50,
                                      color: Colors.black54,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      size: 50,
                                      color: Colors.black54,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      size: 50,
                                      color: Colors.black54,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      size: 50,
                                      color: Colors.black54,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      size: 50,
                                      color: Colors.black54,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * .05,
                                ),
                                SizedBox(
                                  height: 60,
                                  width: 300,
                                  child: RaisedButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) {
                                        return App();
                                      }));
                                    },
                                    color: homebuoyColor,
                                    child: Text(
                                      "RATE & GET STARTED",
                                      style: bigButtonText,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          homeBuoyFooterView(context),
        ],
      ),
    );
  }
}
