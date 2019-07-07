import 'package:flutter/material.dart';
import '../component/textStyle.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: width * .5,
                      height: height - 50,
                      color: Colors.blueGrey,
                      padding: EdgeInsets.all(width * .1),
                      child: Hero(
                        tag: "hotelLogo",
                        child: FlutterLogo(),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .5,
                      color: Colors.grey.shade50,
                      child: Padding(
                        padding: EdgeInsets.all(width * .05),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            TextFormField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: "Your Email",
                                hintText: "e.g.: homebuoy@gmail.com",
                              ),
                            ),
                            TextFormField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.emailAddress,
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "Password",
                                hintText: "Type password here",
                              ),
                            ),
                            SizedBox(
                              height: height * .1,
                            ),
                            Center(
                              child: SizedBox(
                                height: 60,
                                width: 200,
                                child: RaisedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (BuildContext context) {
                                      return Login();
                                    }));
                                  },
                                  color: Colors.deepOrange,
                                  child: Text(
                                    "Login",
                                    style: bigButtonText,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            color: Colors.deepOrange,
            child: Text(
              "Powered by HOMEBUOY",
              style: homeBuoyFooter,
            ),
          ),
        ],
      ),
    );
  }
}
