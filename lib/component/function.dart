import 'package:flutter/material.dart';
import 'textStyle.dart';
import '../page/welcome.dart';

Container leftSide(
    String hotelLogo, double width, double height, BuildContext context) {
  return Container(
    width: width * .5,
    height: height - 50,
    child: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Hero(
          tag: "background",
          child: Image.asset(
            "lib/img/splash_bg.png",
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(height * .15),
          child: Hero(
            tag: "hotelLogo",
            child: Image.network(
              hotelLogo,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(25),
          alignment: Alignment.topLeft,
          child: IconButton(
            icon: Icon(
              Icons.cancel,
              color: Colors.white,
              size: 40,
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return Welcome();
              }));
            },
          ),
        ),
      ],
    ),
  );
}

Hero homeBuoyFooterView(BuildContext context) {
  return Hero(
    tag: "homeBuoyFooterTag",
    child: Container(
      height: 50,
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      color: Colors.deepOrange,
      child: Text(
        "Powered by HOMEBUOY",
        style: homeBuoyFooter,
      ),
    ),
  );
}

Container appBar(String hotelLogo, String hotelName, double width,
    double height, BuildContext context) {
  return Container(
    height: height * .1,
    width: width,
    color: Colors.grey,
    child: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset(
          "lib/img/Appbar.png",
          fit: BoxFit.fitWidth,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              margin: EdgeInsets.all(15.0),
              padding: EdgeInsets.all(10.0),
              child: Hero(
                tag: "hotelLogo",
                child: Image.network(
                  hotelLogo,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(hotelName.toUpperCase(), style: headingWhite),
            ),
            Expanded(
              child: SizedBox(),
            ),
            Text(
              "Powered by HOMEBUOY        ",
              style: homeBuoyFooter,
            )
          ],
        )
      ],
    ),
  );
}

BottomNavigationBar bottomNavs(int selectedIndex, var onItemTapped) {
  return BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
          backgroundColor: Colors.deepOrange),
      BottomNavigationBarItem(
          icon: Icon(Icons.library_books),
          title: Text('User Manual'),
          backgroundColor: Colors.deepOrange),
      BottomNavigationBarItem(
          icon: Icon(Icons.laptop_mac),
          title: Text('Front Desk'),
          backgroundColor: Colors.deepOrange),
      BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          title: Text('Shop'),
          backgroundColor: Colors.deepOrange),
      BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          title: Text('Setting'),
          backgroundColor: Colors.deepOrange),
    ],
    currentIndex: selectedIndex,
    selectedItemColor: Colors.white,
    onTap: onItemTapped,
    iconSize: 50,
    selectedFontSize: 20,
    showUnselectedLabels: true,
    unselectedFontSize: 15,
    unselectedItemColor: Colors.white.withOpacity(.5),
  );
}
