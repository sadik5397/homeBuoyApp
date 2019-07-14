import 'package:flutter/material.dart';
import '../component/function.dart';

class UserManual extends StatefulWidget {
  @override
  _UserManualState createState() => _UserManualState();
}

class _UserManualState extends State<UserManual> {
  @override
  Widget build(BuildContext context) {
    //Default Values
    int _selectedIndex = 1;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    //API data
    var hotelName = "Sifat";
    var hotelLogo =
        "https://avatars0.githubusercontent.com/u/46283609?s=280&v=4";
    var pdfImage =
        "http://nakib.megacitybd.com/HomeBuoy.png";

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              appBar(hotelLogo, hotelName, width, height, context),
              //Slideshow
              Expanded(
                child: Center(
                  child: ListView(
                    children: <Widget>[
                      FadeInImage.assetNetwork(
                          placeholder: "lib/img/loading.gif",
                          image: pdfImage,
                          fit: BoxFit.fitWidth),
                    ],
                  ),
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
