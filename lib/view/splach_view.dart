import 'package:flutter/material.dart';
import 'package:learn/constants.dart';
import 'package:get/get.dart';
import 'package:learn/view/auth/welcome_signin_screen.dart';

class splachscreen extends StatefulWidget {
  @override
  _splachscreenState createState() => _splachscreenState();
}

class _splachscreenState extends State<splachscreen> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 5),(){
      Get.to(welomeSignin());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        backgroundColor: primarycolor,
        body:Center(
          child: Container(
              child: Image.asset(
                "assets/images/logo.png",width:120,height:120,)
          ),)
    );;
  }
}
