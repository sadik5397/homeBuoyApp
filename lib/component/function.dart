import 'package:flutter/material.dart';
import 'textStyle.dart';
import 'colors.dart';
import '../page/welcome.dart';
import '../page/userManual.dart';
import '../page/frontDesk.dart';
import '../page/shop.dart';
import '../page/setting.dart';
import '../page/home.dart';

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

Container bottomNav(int _selectedIndex, double width, BuildContext context) {
  return Container(
    height: 120,
    width: width,
    color: homebuoyColor,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: _selectedIndex == 0
                    ? Colors.white
                    : Colors.white.withOpacity(.5),
              ),
              iconSize: _selectedIndex == 0 ? 70 : 60,
              onPressed: () {
                _selectedIndex == 0
                    // ignore: unnecessary_statements
                    ? ""
                    : Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return Home();
                          },
                        ),
                      );
              },
            ),
            Text("Home",
                style: _selectedIndex == 0
                    ? bottomNavSelected
                    : bottomNavUnSelected),
            SizedBox(
              height: 5,
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.library_books,
                color: _selectedIndex == 1
                    ? Colors.white
                    : Colors.white.withOpacity(.5),
              ),
              iconSize: _selectedIndex == 1 ? 70 : 60,
              onPressed: () {
                _selectedIndex == 1
                    // ignore: unnecessary_statements
                    ? ""
                    : Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return UserManual();
                          },
                        ),
                      );
              },
            ),
            Text("User Manual",
                style: _selectedIndex == 1
                    ? bottomNavSelected
                    : bottomNavUnSelected),
            SizedBox(
              height: 5,
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.laptop_mac,
                color: _selectedIndex == 2
                    ? Colors.white
                    : Colors.white.withOpacity(.5),
              ),
              iconSize: _selectedIndex == 2 ? 70 : 60,
              onPressed: () {
                _selectedIndex == 2
                    // ignore: unnecessary_statements
                    ? ""
                    : Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return FrontDesk();
                          },
                        ),
                      );
              },
            ),
            Text("Front Desk",
                style: _selectedIndex == 2
                    ? bottomNavSelected
                    : bottomNavUnSelected),
            SizedBox(
              height: 5,
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: _selectedIndex == 3
                    ? Colors.white
                    : Colors.white.withOpacity(.5),
              ),
              iconSize: _selectedIndex == 3 ? 70 : 60,
              onPressed: () {
                _selectedIndex == 3
                    // ignore: unnecessary_statements
                    ? ""
                    : Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return Shop();
                          },
                        ),
                      );
              },
            ),
            Text("Shop",
                style: _selectedIndex == 3
                    ? bottomNavSelected
                    : bottomNavUnSelected),
            SizedBox(
              height: 5,
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.settings,
                color: _selectedIndex == 4
                    ? Colors.white
                    : Colors.white.withOpacity(.5),
              ),
              iconSize: _selectedIndex == 4 ? 70 : 60,
              onPressed: () {
                _selectedIndex == 4
                    // ignore: unnecessary_statements
                    ? ""
                    : Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return Setting();
                          },
                        ),
                      );
              },
            ),
            Text("Setting",
                style: _selectedIndex == 4
                    ? bottomNavSelected
                    : bottomNavUnSelected),
            SizedBox(
              height: 5,
            )
          ],
        ),
      ],
    ),
  );
}

Container shopC(
    String productTitle, String price, String imgUrl, double width) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
              color: Colors.black54.withOpacity(.15),
              blurRadius: 10,
              spreadRadius: 0)
        ]),
    margin: EdgeInsets.all(20),
    width: (width - 40) * .3,
//    height: 500,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Stack(
          alignment: Alignment.topRight,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              )),
              height: 220,
              width: (width - 40) * .3,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: FadeInImage.assetNetwork(
                    placeholder: "lib/img/loading.gif",
                    image: imgUrl,
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  )),
              alignment: Alignment.center,
              height: 50,
              width: 160,
              child: Text(
                "\$ $price",
                style: shopPrice,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          productTitle,
          style: shopTitle,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 60,
              width: 60,
              child: RaisedButton(
                onPressed: () {},
                color: homebuoyColor,
                child: Text(
                  "-",
                  style: bigButtonText,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: homebuoyColor, width: 3)),
              child: Text(
                "1",
                style: shopPrice,
              ),
            ),
            SizedBox(
              height: 60,
              width: 60,
              child: RaisedButton(
                onPressed: () {},
                color: homebuoyColor,
                child: Text(
                  "+",
                  style: bigButtonText,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 60,
          width: 220,
          child: RaisedButton(
            onPressed: () {
              print(price + productTitle + imgUrl);
            },
            color: homebuoyColor,
            child: Text(
              "ADD TO CART",
              style: bigButtonText,
            ),
          ),
        ),
      ],
    ),
  );
}

Padding filterChip(String text, bool selected) {
  return Padding(
    padding: const EdgeInsets.only(right : 20, bottom: 16, top: 16),
    child: SizedBox(
      height: 60,
      width: 220,
      child: RaisedButton(
          color: selected ? homebuoyColor : Colors.white,
          child: Text(
            text,
            style: selected ? bigButtonText : bigButtonTextReverse,
          ),
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
    ),
  );
}

Image background() {
  return Image.asset(
    "lib/img/background.png",
    fit: BoxFit.cover,
  );
}

Container poweredBy(double width) {
  return Container(
    height: 50,
    alignment: Alignment.center,
    width: width,
    color: Colors.deepOrange,
    child: Text(
      "Powered by HOMEBUOY",
      style: homeBuoyFooter,
    ),
  );
}

FadeInImage sliderImage (String imgUrl){
  return FadeInImage.assetNetwork(
      placeholder: "lib/img/loader.gif",
      placeholderScale: 0.5,
      image: imgUrl,
      fit: BoxFit.cover);
}