import 'package:flutter/material.dart';
import '../component/function.dart';

class FrontDesk extends StatefulWidget {
  @override
  _FrontDeskState createState() => _FrontDeskState();
}

class _FrontDeskState extends State<FrontDesk> {
  @override
  Widget build(BuildContext context) {
    //Default Values
    int _selectedIndex = 2;
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Material(
                          child: InkWell(
                            child: Image.asset("lib/img/call.png"),
                            onTap: () {},
                          ),
                        ),
                        Material(
                          child: InkWell(
                            child: Image.asset("lib/img/chat.png"),
                            onTap: () {},
                          ),
                        ),
                        Material(
                          child: InkWell(
                            child: Image.asset("lib/img/room.png"),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //BottomNavigation
              bottomNav(_selectedIndex, width, context),
            ],
          ),
        ),
      ),
    );
  }
}
