import 'package:flutter/material.dart';
import '../component/function.dart';
import 'package:pit_carousel/pit_carousel.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //Default Values
    int _selectedIndex = 0;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    //API data
    var hotelName = "Sifat";
    var hotelLogo =
        "https://avatars0.githubusercontent.com/u/46283609?s=280&v=4";
    List carslImage = [
      "https://picsum.photos/1920/1080?random=1",
      "https://picsum.photos/1920/1080?random=2",
      "https://picsum.photos/1920/1080?random=3",
      "https://picsum.photos/1920/1080?random=4",
      "https://picsum.photos/1920/1080?random=5",
      "https://picsum.photos/1920/1080?random=6",
      "https://picsum.photos/1920/1080?random=7",
      "https://picsum.photos/1920/1080?random=8",
      "https://picsum.photos/1920/1080?random=9",
      "https://picsum.photos/1920/1080?random=10",
    ];

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              appBar(hotelLogo, hotelName, width, height, context),
              //Slideshow
              Expanded(
                child: AdvCarousel(
                  dotAlignment: Alignment.bottomCenter,
                  height: height * .3,
                  animationCurve: Curves.easeInOutQuad,
                  animationDuration: Duration(milliseconds: 800),
                  displayDuration: Duration(seconds: 5),
                  children: <Widget>[
                    sliderImage(carslImage[0]),
                    sliderImage(carslImage[1]),
                    sliderImage(carslImage[2]),
                    sliderImage(carslImage[3]),
                    sliderImage(carslImage[4]),
                    sliderImage(carslImage[5]),
                    sliderImage(carslImage[6]),
                    sliderImage(carslImage[7]),
                    sliderImage(carslImage[8]),
                    sliderImage(carslImage[9]),
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