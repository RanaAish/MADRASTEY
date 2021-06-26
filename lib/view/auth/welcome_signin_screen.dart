import 'package:flutter/material.dart';
import 'package:learn/view/widgets/customtext.dart';
import 'package:learn/view/widgets/custombuttun.dart';
import '../../constants.dart';
import 'package:learn/view/auth/signinstudent_screen.dart';
import 'package:get/get.dart';

class welomeSignin extends StatefulWidget {
  @override
  welomeSignin_State createState() =>  welomeSignin_State();
}

class  welomeSignin_State extends State< welomeSignin> {

  bool click_admin=false,click_student=false,click_teacher=false;

  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    double width  =MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
          height: height,
          width: width,
          child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Image.asset(''
                  "assets/images/top.png",
                fit: BoxFit.fitWidth,
                alignment: Alignment.topLeft,
              ),
            ),
            Positioned(
              top: 40,
              left: 30,
              child: Image.asset(
                "assets/images/logo.png",
                width: 40,
                height: 40,
              ),
            ),
            Positioned.fill(
              child: Image.asset(
                "assets/images/bottom.png",
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomLeft,
              ),
            ),
            Positioned(
                left:width/15,
                top: 180,
                child: customtext(
                  text: "welcome for all ",
                  fontSize: 20,
                )),
            Positioned(
              top: 180,
              left: width/15,
              child: Column(
                children: [
                  SizedBox(height: 45),
                  customtext(
                      text:
                      "The Best collection of For All Student In All different "),
                  SizedBox(
                    height: 5,
                  ),
                  customtext(
                      text:
                      "Ages From six years to The Best collection of For All"),
                  SizedBox(
                    height: 5,
                  ),
                  customtext(
                    text: "Student In All different Ages From six years to older ",
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  customtext(
                    text: "Choose your type",
                    fontSize: 22,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  customtext(
                      text:
                      "The Best collection of For All Student In All different "),
                  SizedBox(
                    height: 5,
                  ),
                  customtext(
                    text: "Ages From six years to The Best collection of For All",
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  CustomButton(text:"Admin",onPress:(){
                    setState(() {
                      click_student=false;
                      click_teacher=false;
                      click_admin=true;
                    });
                    Get.to(signinstudent(text: "Sign in Admin",role: "A",));
                  }
                    ,color:click_admin?primarycolor:secondarycolor,colortext: click_admin?Colors.white:Colors.black,
                  ),
                  CustomButton(text:"teacher",onPress:(){
                    setState(() {
                      click_student=false;
                      click_teacher=true;
                      click_admin=false;
                    });
                    Get.to(signinstudent(text: "Sign in Teacher",role: "T",));
                  },color:click_teacher?primarycolor:secondarycolor,colortext: click_teacher?Colors.white:Colors.black,),
                  CustomButton(text:"student",onPress:(){
                    setState(() {
                      click_student=true;
                      click_teacher=false;
                      click_admin=false;
                    });
                    Get.to(signinstudent(text: "Sign in Student",role: "S",));
                  } ,color:click_student?primarycolor:secondarycolor,colortext: click_student?Colors.white:Colors.black,)
                ],
              ),
            )
          ],
        ),));
  }
}
