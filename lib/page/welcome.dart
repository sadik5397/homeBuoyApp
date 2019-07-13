//welcome.dart
import 'package:flutter/material.dart';
import '../component/textStyle.dart';
import '../page/register.dart';
//import 'package:flare_flutter/flare_actor.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    //Default Values
    // ignore: unused_local_variable
    var width = MediaQuery.of(context).size.width;
    // ignore: unused_local_variable
    var height = MediaQuery.of(context).size.height;

    //API data
    var hotelName = "Sifat";
    var hotelLogo =
        "https://avatars0.githubusercontent.com/u/46283609?s=280&v=4";

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: <Widget>[
          Image.asset(
            "lib/img/splash_bg.png",
            fit: BoxFit.cover,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: "hotelLogo",
                  child: FadeInImage.assetNetwork(
                      placeholder: "lib/img/loader.gif",
//                      placeholderScale: 1,
                      image: hotelLogo,
                      height: 200,
                      fit: BoxFit.fitHeight),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Welcome $hotelName".toUpperCase(),
                  style: welcome,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Press and hold to Complete Guest Check-in",
                  style: welcomeSubtitle,
                ),
                SizedBox(
                  height: 80,
                ),
                InkWell(
                  onLongPress: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return Register();
                        },
                      ),
                    );
                  },
                  child: Image.asset(
                    "lib/img/no_lock.gif",
                    height: 100,
                    width: 100,
                    color: Colors.white.withOpacity(.7),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
