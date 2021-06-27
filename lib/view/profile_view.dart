import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:learn/constants.dart';
import 'package:learn/core/view_model/auth_viewmodel.dart';
import 'package:learn/view/widgets/customtext.dart';
import 'package:learn/model/card_model.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class profile_view extends StatefulWidget {
  @override
  _profile_viewState createState() => _profile_viewState();
}

class _profile_viewState extends State<profile_view> {
  List images = ["assets/images/travel.png", "assets/images/puzzle.png"];
  List words = ["Travel", "Puzzle"];
  List pictures=["assets/images/always near.png","assets/images/use expressions.jpg","assets/images/make preview.jpg","assets/images/Record lessons.jpeg"];
  List names=["Always near","User Expressions","Make Preview","Record Lessons"];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: backgroundcolor,
        body: GetBuilder<AuthViewmodel>(
          init: AuthViewmodel(),
          builder: (controler) => Container(
            height:height,
            width: width,
            child:Get.find<AuthViewmodel>().user.role=="S"?
             Stack(children: <Widget>[
              Positioned.fill(
                  child: Image.asset(
                "assets/images/bluetop.jpg",
                fit: BoxFit.fitWidth,
                alignment: Alignment.topLeft,
              )),
              Positioned(
                top: 73.h,
                left: 33.w,
                child: CircleAvatar(
                    radius: 60.0,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage(
                      'assets/images/person.png',
                    )),
              ),
              Positioned(
                top: 210.h,
                left: 50.w,
                child: customtext(
                  fontfamily:"SegoeUI-Semi",
                  text: "${Get.find<AuthViewmodel>().user.name.toString()}",
                  fontSize: 18,
                  fontweight: FontWeight.bold,
                ),
              ),
              Positioned(
                  top: 270.h,
                  child: Container(
                    height: 150.h,
                    width: 400.w,
                    child: ListView.builder(
                        itemCount: cardmodel.card.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, index) {
                          return new Container(
                              padding: EdgeInsets.all(10),
                              width: 170.w,
                              height: 200.h,
                              child: GestureDetector(
                                onTap: () {},
                                child: Card(
                                  color: cardmodel.card[index]["colorstudent"],
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(25.0)),
                                  child: Column(

                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 18.h, right: 10.w),
                                        child: customtext(
                                          text: cardmodel.card[index]["title"],
                                          fontweight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.only(top: 18.h, left: 10.w),
                                        child: customtext(
                                          text: cardmodel.card[index]
                                              ["content1"],
                                          fontSize: 12,
                                          maxLine: 3,
                                          height: 1.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ));
                        }),
                  )),
              Positioned(
                top: 480.h,
                left: 35.w,
                child: customtext(
                  text: "Score",
                  fontSize: 26,
                  fontweight: FontWeight.bold,
                ),
              ),
              Positioned(
                  top: 500.h,
                  left: 20.w,
                  height: 200.h,
                  width: 500.w,
                  child: Container(
                    child: ListView.builder(
                        itemCount: images.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, index) {
                          return new Padding(
                              padding:
                                  EdgeInsets.only(top: 5.h, left: 12.w, bottom: 15.h),
                              child: Column(children: [
                                Row(
                                  children: [
                                    Container(
                                        width: 60.w,
                                        height: 65.h,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/circle.png"),
                                        )),
                                        child: Center(
                                          child: Image.asset(
                                            images[index],
                                            width: 50.w,
                                            height: 50.h,
                                          ),
                                        )),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5.h),
                                      child: Container(
                                        margin: EdgeInsets.only(left: 30.w),
                                        width: 255,
                                        height: 55,
                                        child: Card(
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 30.w),
                                              child: Row(
                                                children: [
                                                  customtext(
                                                    text: words[index],
                                                    fontSize: 18,
                                                    height: 1.5,
                                                    color: Colors.white,
                                                    fontweight: FontWeight.bold,
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 70.w),
                                                      child: FutureBuilder(
                                                          future: Get.find<
                                                                  AuthViewmodel>()
                                                              .getlengthoftrip(
                                                                  Get.find<AuthViewmodel>().user.iD),
                                                          builder: (context, AsyncSnapshot snapshot2) {
                                                            return customtext(
                                                              text: "${snapshot2
                                                                  .data.length
                                                                  .toString()} Points",
                                                              fontSize: 16,
                                                              height: 1.5.h,
                                                              color:
                                                                  Colors.white,
                                                            );
                                                          }))
                                                ],
                                              )),
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: green,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25.0)),
                                          elevation: 2,
                                        ),
                                      ),
                                      //child: customtext(
                                      //text: words[index],
                                      //),
                                    )
                                  ],
                                )
                              ]));
                        }),
                  ))
            ]):
            Stack(children: <Widget>[
            Positioned.fill(
            child: Image.asset(
              "assets/images/bluetop.jpg",
              fit: BoxFit.fitWidth,
              alignment: Alignment.topLeft,
            )),
          Positioned(
            top: 73.h,
            left: 33.w,
            child: CircleAvatar(
                radius: 60.0,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage(
                  'assets/images/person.png',
                )),
          ),
          Positioned(
            top: 210.h,
            left: 50.w,
            child: customtext(
              fontfamily:"SegoeUI-Semi",
              text: "${Get.find<AuthViewmodel>().user.name.toString()}",
              fontSize: 18,
              fontweight: FontWeight.bold,
            ),),
          Positioned(
            top: 280.h,
            left: 20.w,
            child: Container(
              height: 500, width: 350,
                  child: Expanded(child:GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount:4,
                    itemBuilder: (BuildContext context, i) {
                      return new  Container(
                          padding: EdgeInsets.all(5),
                          child:GetBuilder<AuthViewmodel>(
                              init:AuthViewmodel(),
                              builder:(value)=>Padding(padding:EdgeInsets.all(5),child:
                              Flexible(child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                          width:160.w,
                                          height:120.h,
                                          child:
                                          ClipRRect(
                                              borderRadius: BorderRadius.circular(40),
                                              child: Image(
                                                  image: AssetImage(
                                                      pictures[i])))),
                                      Positioned.fill(
                                          top: -10.h,
                                          left: -10.w,
                                          child:Align(
                                              alignment: Alignment.topLeft,
                                              child: Image.asset('assets/images/paper-clip@1X.png',width: 50.w,height: 50.h,)
                                          ) )
                                    ],
                                  ),
                                  SizedBox(height: 13.h,),
                                  Expanded(child: customtext(
                                    fontfamily:"SegoeUI-Semi",
                                    text: "${names[i]}",
                                    fontSize: 19,
                                    color:profile_text,
                                  ),)

                                ],
                              ),),))
                      );
                    },
                  )),
                ) ),
              ])
          ),
        ));
  }
}
