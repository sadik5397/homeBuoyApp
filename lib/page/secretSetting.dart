import 'package:flutter/material.dart';
import '../component/function.dart';
import '../component/colors.dart';
import '../component/textStyle.dart';
import 'welcome.dart';

class SecretSetting extends StatefulWidget {
  @override
  _SecretSettingState createState() => _SecretSettingState();
}

class _SecretSettingState extends State<SecretSetting> {
  @override
  Widget build(BuildContext context) {
    //Default Values
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    //API data
    var hotelName = "Sifat";
    var hotelLogo =
        "https://avatars0.githubusercontent.com/u/46283609?s=280&v=4";

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              appBar(hotelLogo, hotelName, width, height, context),
              //Slideshow
              Expanded(
                child: Stack(
                  fit: StackFit.expand,
                  alignment: Alignment.center,
                  children: <Widget>[
                    background(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Material(
                              child: InkWell(
                                child: Image.asset("lib/img/wifi.png"),
                                onTap: () {},
                              ),
                            ),
                            Material(
                              child: InkWell(
                                child: Image.asset("lib/img/brightness.png"),
                                onTap: () {},
                              ),
                            ),
                            Material(
                              child: InkWell(
                                child: Image.asset("lib/img/reset.png"),
                                onTap: () {},
                              ),
                            ),
                            Material(
                              child: InkWell(
                                child: Image.asset("lib/img/checkout.png"),
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (BuildContext context) {
                                        return Welcome();
                                      },
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 60,
                          width: 200,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            color: homebuoyColor,
                            child: Text(
                              "APPLY & SAVE",
                              style: bigButtonText,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //BottomNavigation
              poweredBy(width),
            ],
          ),
        ),
      ),
    );
  }
}
