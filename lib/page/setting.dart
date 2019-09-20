import 'package:flutter/material.dart';
import '../component/function.dart';
import '../component/colors.dart';
import '../component/textStyle.dart';
import '../page/secretSetting.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    //Default Values
    int _selectedIndex = 4;
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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * .3),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "ADMINISTRATOR ACCESS ONLY!",
                            style: subHeading,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          TextFormField(
                            autofocus: false,
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            style: formData,
                            decoration: InputDecoration(
                              labelText: "Enter Password",
                              fillColor: Colors.white,
                              labelStyle: formLabel,
                              hintStyle: formHelper,
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          SizedBox(
                            height: 60,
                            width: 200,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return SecretSetting();
                                    },
                                  ),
                                );
                              },
                              color: homebuoyColor,
                              child: Text(
                                "ACCESS",
                                style: bigButtonText,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
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
