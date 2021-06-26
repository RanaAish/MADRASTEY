import 'package:flutter/material.dart';
import 'package:learn/view/widgets/custombuttun.dart';
import 'package:learn/view/widgets/customtext.dart';

import '../constants.dart';

class privacy_policyview extends StatefulWidget {
  @override
  _privacy_policyviewState createState() => _privacy_policyviewState();
}

class _privacy_policyviewState extends State<privacy_policyview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Positioned.fill(
        left: -20,
        top: -5,
        child: Image.asset(
          "assets/images/background_left.png",
          fit: BoxFit.none,
          alignment: Alignment.topLeft,
        ),
      ),
      Positioned.fill(
        right: -50,
        top: -5,
        child: Image.asset(
          "assets/images/background_right.png",
          fit: BoxFit.none,
          alignment: Alignment.topRight,
        ),
      ),
      Positioned(
        top: 20,
        left: 30,
        child: Image.asset(
          "assets/images/logo.png",
          width: 40,
          height: 40,
        ),
      ),
      Positioned(
        top: 155,
        left: 55,
        child: customtext(
          text: "Madrasty Privacy Poloicy",
          fontSize: 24,
          color: Colors.black,
          alignment: Alignment.center,
          fontweight: FontWeight.bold,
        ),
      ),
      Positioned(
          left: 80,
          top: 190,
          child: Align(
              alignment: Alignment.center,
              child: customtext(
                text: "Madrasty Privacy Policy Madrasty Privacy",
                fontSize: 12,
                fontweight: FontWeight.bold,
              ))),
      Positioned(
          top: 210,
          left: 150,
          child: Align(
              alignment: Alignment.center,
              child: customtext(
                text: "Privacy Madrasty",
                fontSize: 12,
                fontweight: FontWeight.bold,
              ))),
      Positioned(
          left: 80,
          top: 230,
          child: Align(
              alignment: Alignment.center,
              child: customtext(
                text: "Madrasty Privacy Policy Madrasty Privacy",
                fontSize: 12,
                fontweight: FontWeight.bold,
              ))),
      Positioned(
          top: 250,
          left: 150,
          child: Align(
              alignment: Alignment.center,
              child: customtext(
                text: "Privacy Madrasty",
                fontSize: 12,
                fontweight: FontWeight.bold,
              ))),
      Positioned(
        top: 290,
        left: 120,
        child: customtext(
          text: "Privacy Policy Triks",
          fontSize: 18,
          color: Colors.black,
          alignment: Alignment.center,
          fontweight: FontWeight.bold,
        ),
      ),
      Positioned(
          left: 80,
          top: 320,
          child: Align(
              alignment: Alignment.center,
              child: customtext(
                text: "Madrasty Privacy Policy Madrasty Privacy",
                fontSize: 12,
                fontweight: FontWeight.bold,
              ))),
      Positioned(
        top: 315,
        child: Container(
          margin: EdgeInsets.only(top: 37, right: 10, left: 20),
          height: 80,
          width: 350,
          child: Card(
            child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    customtext(
                      text: "Madrasty Privacy Policy Madrasty Privacy Policy",
                      fontSize: 14,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    customtext(
                      text: "Madrasty Privacy Policy Madrasty Privacy Policy",
                      fontSize: 14,
                      color: Colors.white,
                    )
                  ],
                )),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: green,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
            elevation: 2,
          ),
        ),
      ),
      Positioned(
        top: 405,
        child: Container(
          margin: EdgeInsets.only(top: 37, right: 10, left: 20),
          height: 80,
          width: 350,
          child: Card(
            child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    customtext(
                      text: "Madrasty Privacy Policy Madrasty Privacy Policy",
                      fontSize: 14,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    customtext(
                      text: "Madrasty Privacy Policy Madrasty Privacy Policy",
                      fontSize: 14,
                      color: Colors.white,
                    )
                  ],
                )),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: green,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
            elevation: 2,
          ),
        ),
      ),
      Positioned(
        top: 490,
        child: Container(
          margin: EdgeInsets.only(top: 37, right: 10, left: 20),
          height: 80,
          width: 350,
          child: Card(
            child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    customtext(
                      text: "Madrasty Privacy Policy Madrasty Privacy Policy",
                      fontSize: 14,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    customtext(
                      text: "Madrasty Privacy Policy Madrasty Privacy Policy",
                      fontSize: 14,
                      color: Colors.white,
                    )
                  ],
                )),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: green,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
            elevation: 2,
          ),
        ),
      ),
      Positioned(
        top: 575,
        child: Container(
          margin: EdgeInsets.only(top: 37, right: 10, left: 20),
          height: 80,
          width: 350,
          child: Card(
            child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    customtext(
                      text: "Madrasty Privacy Policy Madrasty Privacy Policy",
                      fontSize: 14,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    customtext(
                      text: "Madrasty Privacy Policy Madrasty Privacy Policy",
                      fontSize: 14,
                      color: Colors.white,
                    )
                  ],
                )),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: green,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
            elevation: 2,
          ),
        ),
      ),
      Positioned(
          left: 40,
          top: 705,
          child: Align(
              alignment: Alignment.center,
              child: customtext(
                text:
                    "If Your Admin You Can log in to control teacher  or student ",
                fontSize: 12,
                fontweight: FontWeight.bold,
              ))),
      Positioned(
          left: 60,
          top: 723,
          child: Align(
              alignment: Alignment.center,
              child: customtext(
                text: "or parent and Admins data according your salahyat",
                fontSize: 12,
                fontweight: FontWeight.bold,
              ))),
      Positioned(
          top: 745,
          left: 130,
          child: Center(
            child: CustomButton(
              onPress: () {},
              text: "View More",
              w: 115,
              h: 35,
              color: iconcolor,
              colortext: Colors.white,
            ),
          ))
    ]));
  }
}
