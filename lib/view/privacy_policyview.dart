import 'package:flutter/material.dart';
import 'package:learn/view/widgets/custombuttun.dart';
import 'package:learn/view/widgets/customtext.dart';

import '../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class privacy_policyview extends StatefulWidget {
  @override
  _privacy_policyviewState createState() => _privacy_policyviewState();
}

class _privacy_policyviewState extends State<privacy_policyview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(children: <Widget>[
              Positioned.fill(
                left: -20.w,
                top: -5.h,
                child: Image.asset(
                  "assets/images/background_left.png",
                  fit: BoxFit.none,
                  alignment: Alignment.topLeft,
                ),
              ),
              Positioned.fill(
                right: -50.w,
                top: -5.h,
                child: Image.asset(
                  "assets/images/background_right.png",
                  fit: BoxFit.none,
                  alignment: Alignment.topRight,
                ),
              ),
              Positioned(
                top: 20.h,
                left: 30.w,
                child: Image.asset(
                  "assets/images/logo.png",
                  width: 40.w,
                  height: 40.h,
                ),
              ),
              Positioned(
                top: 155.h,
                left: 55.w,
                child: customtext(
                  text: "Madrasty Privacy Poloicy",
                  fontSize: 24,
                  color: Colors.black,
                  alignment: Alignment.center,
                  fontweight: FontWeight.bold,
                ),
              ),
              Positioned(
                  left: 80.w,
                  top: 190.h,
                  child: Align(
                      alignment: Alignment.center,
                      child: customtext(
                        text: "Madrasty Privacy Policy Madrasty Privacy",
                        fontSize: 12,
                        fontweight: FontWeight.bold,
                      ))),
              Positioned(
                  top: 210.h,
                  left: 150.w,
                  child: Align(
                      alignment: Alignment.center,
                      child: customtext(
                        text: "Privacy Madrasty",
                        fontSize: 12,
                        fontweight: FontWeight.bold,
                      ))),
              Positioned(
                  left: 80.w,
                  top: 230.h,
                  child: Align(
                      alignment: Alignment.center,
                      child: customtext(
                        text: "Madrasty Privacy Policy Madrasty Privacy",
                        fontSize: 12,
                        fontweight: FontWeight.bold,
                      ))),
              Positioned(
                  top: 250.h,
                  left: 150.w,
                  child: Align(
                      alignment: Alignment.center,
                      child: customtext(
                        text: "Privacy Madrasty",
                        fontSize: 12,
                        fontweight: FontWeight.bold,
                      ))),
              Positioned(
                top: 290.h,
                left: 120.w,
                child: customtext(
                  text: "Privacy Policy Triks",
                  fontSize: 18,
                  color: Colors.black,
                  alignment: Alignment.center,
                  fontweight: FontWeight.bold,
                ),
              ),
              Positioned(
                  left: 80.w,
                  top: 320.h,
                  child: Align(
                      alignment: Alignment.center,
                      child: customtext(
                        text: "Madrasty Privacy Policy Madrasty Privacy",
                        fontSize: 12,
                        fontweight: FontWeight.bold,
                      ))),
              Positioned(
                top: 315.h,
                child: Container(
                  margin: EdgeInsets.only(top: 37.h, right: 10.w, left: 20.w),
                  height: 80.h,
                  width: 350.w,
                  child: Card(
                    child: Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: Column(
                          children: [
                            customtext(
                              text: "Madrasty Privacy Policy Madrasty Privacy Policy",
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 5.h,
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
                top: 405.h,
                child: Container(
                  margin: EdgeInsets.only(top: 37.h, right: 10.w, left: 20.w),
                  height: 80.h,
                  width: 350.w,
                  child: Card(
                    child: Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: Column(
                          children: [
                            customtext(
                              text: "Madrasty Privacy Policy Madrasty Privacy Policy",
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 5.h,
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
                top: 490.h,
                child: Container(
                  margin: EdgeInsets.only(top: 37.h, right: 10.w, left: 20.w),
                  height: 80.h,
                  width: 350.w,
                  child: Card(
                    child: Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: Column(
                          children: [
                            customtext(
                              text: "Madrasty Privacy Policy Madrasty Privacy Policy",
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 5.h,
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
                top: 575.h,
                child: Container(
                  margin: EdgeInsets.only(top: 37.h, right: 10.w, left: 20.w),
                  height: 80.h,
                  width: 350.w,
                  child: Card(
                    child: Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: Column(
                          children: [
                            customtext(
                              text: "Madrasty Privacy Policy Madrasty Privacy Policy",
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 5.h,
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
                  left: 40.w,
                  top: 705.h,
                  child: Align(
                      alignment: Alignment.center,
                      child: customtext(
                        text:
                        "If Your Admin You Can log in to control teacher  or student ",
                        fontSize: 12,
                        fontweight: FontWeight.bold,
                      ))),
              Positioned(
                  left: 60.w,
                  top: 723.h,
                  child: Align(
                      alignment: Alignment.center,
                      child: customtext(
                        text: "or parent and Admins data according your salahyat",
                        fontSize: 12,
                        fontweight: FontWeight.bold,
                      ))),
              Positioned(
                  top: 745.h,
                  left: 130.w,
                  child: Center(
                    child: CustomButton(
                      onPress: () {},
                      text: "View More",
                      w: 115.w,
                      h: 35.h,
                      color: iconcolor,
                      colortext: Colors.white,
                    ),
                  ))
            ]),
          ),
        ),);
  }
}
