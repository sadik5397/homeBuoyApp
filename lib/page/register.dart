import 'package:flutter/material.dart';
import '../component/textStyle.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
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
                  child: Container(
                    child: ListView(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(40),
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  labelText: "Your Name",
                                  hintText: "e.g.: John Doe",
                                ),
                              ),
                              TextFormField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  labelText: "Your Mobile Number",
                                  hintText: "e.g.: +891 125 8887",
                                ),
                              ),
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
                              TextFormField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.emailAddress,
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: "Confirm Password",
                                  hintText: "Type password here again",
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
                                            return Register();
                                          }));
                                    },
                                    color: Colors.deepOrange,
                                    child: Text(
                                      "Register",
                                      style: bigButtonText,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
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
