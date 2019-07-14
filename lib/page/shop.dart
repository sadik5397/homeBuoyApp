import 'package:flutter/material.dart';
import '../component/function.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    //Default Values
    int _selectedIndex = 3;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    //API data
    var hotelName = "Sifat";
    var hotelLogo =
        "https://avatars0.githubusercontent.com/u/46283609?s=280&v=4";
    List category = [
      "Category 01",
      "Category 02",
      "Category 03",
      "Category 04"
    ];
    List productData = [
      {
        "imgUrl": "https://picsum.photos/400/400?random=1",
        "price": "12.99",
        "productTitle": "Lorem Ipsum",
      },
      {
        "imgUrl": "https://picsum.photos/400/400?random=2",
        "price": "12.99",
        "productTitle": "Dolor Set",
      },
      {
        "imgUrl": "https://picsum.photos/400/400?random=3",
        "price": "12.99",
        "productTitle": "Biraler Bish",
      },
      {
        "imgUrl": "https://picsum.photos/400/400?random=4",
        "price": "12.99",
        "productTitle": "Bisher Bashi",
      },
      {
        "imgUrl": "https://picsum.photos/400/400?random=5",
        "price": "12.99",
        "productTitle": "Agni Bina",
      },
      {
        "imgUrl": "https://picsum.photos/400/400?random=6",
        "price": "12.99",
        "productTitle": "Virat Koholi",
      }
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
                child: Stack(
                  fit: StackFit.expand,
                  alignment: Alignment.center,
                  children: <Widget>[
                    background(),
                    ListView(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: <Widget>[
                              //Filter
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    filterChip("All", true),
                                    filterChip(category[0], false),
                                    filterChip(category[1], false),
                                    filterChip(category[2], false),
                                    filterChip(category[3], false),
                                  ],
                                ),
                              ),
                              //Products
                              Row(
                                children: <Widget>[
                                  shopC(
                                    productData[0]["productTitle"],
                                    productData[0]["price"],
                                    productData[0]["imgUrl"],
                                    width,
                                  ),
                                  shopC(
                                    productData[1]["productTitle"],
                                    productData[1]["price"],
                                    productData[1]["imgUrl"],
                                    width,
                                  ),
                                  shopC(
                                    productData[2]["productTitle"],
                                    productData[2]["price"],
                                    productData[2]["imgUrl"],
                                    width,
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  shopC(
                                    productData[3]["productTitle"],
                                    productData[3]["price"],
                                    productData[3]["imgUrl"],
                                    width,
                                  ),
                                  shopC(
                                    productData[4]["productTitle"],
                                    productData[4]["price"],
                                    productData[4]["imgUrl"],
                                    width,
                                  ),
                                  shopC(
                                    productData[5]["productTitle"],
                                    productData[5]["price"],
                                    productData[5]["imgUrl"],
                                    width,
                                  ),
                                ],
                              ),
                            ],
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
