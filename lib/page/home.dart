import 'package:flutter/material.dart';
import 'package:pit_carousel/pit_carousel.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //Default Values
    // ignore: unused_local_variable
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    //API data
    List carslImage = [
      "http://1.bp.blogspot.com/_imSc6s46azE/TFLXYyudTII/AAAAAAAABV0/1pH02aWcAnM/s1600/IMG_2538_cropped.JPG",
      "http://www.brac.net/sites/default/files/IMG_1121web.jpg",
      "http://archive.thedailystar.net/magazine/2010/01/02/s01.jpg",
      "http://groundwork.mit.edu/wp-content/uploads/2014/07/BRAC-web.jpg",
    ];

    return AdvCarousel(
      dotAlignment: Alignment.bottomCenter,
      height: height * .3,
      animationCurve: Curves.easeInOutQuad,
      animationDuration: Duration(milliseconds: 800),
      displayDuration: Duration(seconds: 5),
      children: <Widget>[
        FadeInImage.assetNetwork(
            placeholder: "lib/img/loading.gif",
            placeholderScale: 0.5,
            image: carslImage[0],
            fit: BoxFit.cover),
        FadeInImage.assetNetwork(
            placeholder: "lib/img/loading.gif",
            placeholderScale: 0.5,
            image: carslImage[1],
            fit: BoxFit.cover),
        FadeInImage.assetNetwork(
            placeholder: "lib/img/loading.gif",
            placeholderScale: 0.5,
            image: carslImage[2],
            fit: BoxFit.cover),
        FadeInImage.assetNetwork(
            placeholder: "lib/img/loading.gif",
            placeholderScale: 0.5,
            image: carslImage[3],
            fit: BoxFit.cover),
      ],
    );
  }
}
