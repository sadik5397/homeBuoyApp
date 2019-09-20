import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rakin_test/model/listing.dart';
import '../component/function.dart';
import 'package:pit_carousel/pit_carousel.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String url = 'http://homebuoy.com.au/html/get_all_listing.php';
  List<Listings> listings;

List<Listings> listingsFromJson(String str) => List<Listings>.from(json.decode(str).map((x) => Listings.fromJson(x)));

  Future<String> getJsonData() async{
    var response = await http.get(
      Uri.encodeFull(url),
      headers: {"Accept" : "application/json"}
    );

    print(response.body);

    setState(() {
      listings = listingsFromJson(response.body);
      print("state: "+response.body);
    });

    return "success";
  }

  @override
  void initState() {
    super.initState();
    this.getJsonData();
    print("called init");
  }

  @override
  Widget build(BuildContext context) {
    //Default Values
    int _selectedIndex = 0;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    //API data
    var hotelName = "";
    var hotelLogo =
        "http://homebuoy.com.au/img/aatosh_logo.png";
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
                  children: //<Widget>[
                    listings
                    // sliderImage(carslImage[0]),
                    // sliderImage(carslImage[1]),
                    // sliderImage(carslImage[2]),
                    // sliderImage(carslImage[3]),
                    // sliderImage(carslImage[4]),
                    // sliderImage(carslImage[5]),
                    // sliderImage(carslImage[6]),
                    // sliderImage(carslImage[7]),
                    // sliderImage(carslImage[8]),
                    // sliderImage(carslImage[9]),
                  //],
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