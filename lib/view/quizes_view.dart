import 'package:flutter/material.dart';
import 'package:learn/constants.dart';
import 'package:learn/view/widgets/custom_textfield.dart';
import 'package:learn/view/widgets/custombuttun.dart';
import 'package:learn/view/widgets/customtext.dart';
import 'package:learn/core/view_model/auth_viewmodel.dart';
import 'package:get/get.dart';

class quizes extends StatefulWidget {
  @override
  _quizesState createState() => _quizesState();
}

class _quizesState extends State<quizes> {

  bool click_course =true;
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  int course_id=1;
  String name,grade,StartTime,EndTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundcolor,
          elevation: 1,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: backgroundcolor,
        body: GetBuilder<AuthViewmodel>(
            init: AuthViewmodel(),
            builder: (controler) => Get.find<AuthViewmodel>().user.role=="S"?
                FutureBuilder(
                future: Get.find<AuthViewmodel>()
                    .getallcourses(Get.find<AuthViewmodel>().user.iD),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return SingleChildScrollView(
                        child: Padding(
                            padding:
                                EdgeInsets.only(right: 20, left: 20, top: 20),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 18, bottom: 10),
                                    child: customtext(
                                      text: "Follow Your Level",
                                      fontSize: 16,
                                      fontweight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 18, bottom: 10),
                                    child: customtext(
                                      text:
                                          "If Your Admin You Can log in to control teacher  or student  or parent and Admins data according your salahyat",
                                      fontSize: 13,
                                      height: 1.5,
                                    ),
                                  ),
                                  snapshot.data.length!=0?Container(
                                      height: 128,
                                      child: GridView.count(
                                          crossAxisCount: 3,
                                          childAspectRatio: 16 / 8,
                                          children: List.generate(
                                              snapshot.data.length,
                                                  (index) => new Padding(
                                                padding: EdgeInsets.only(
                                                    right: 8, left: 8),
                                                child: GestureDetector(
                                                  onTap: () {},
                                                  child: CustomButton(
                                                    onPress: () {
                                                      setState(() {
                                                        click_course = true;
                                                        course_id=snapshot
                                                            .data[index].iD;
                                                      });
                                                    },
                                                    text: snapshot
                                                        .data[index].name,
                                                    color:click_course&&course_id==snapshot
                                                        .data[index].iD?Colors.white:iconcolor,colortext:click_course?Colors.black:Colors.white,
                                                  ),
                                                ),
                                              )))):Container(
                        height: 128,child: Center(child:customtext(
                                    text: "You donot Login in any courses",
                                    fontSize: 17,
                                    fontweight: FontWeight.bold,
                                    color: Colors.redAccent,
                                  ),)),
                                  FutureBuilder(
                                      future: Get.find<AuthViewmodel>()
                                          .getquizes(
                                              Get.find<AuthViewmodel>().user.iD, course_id),
                                      builder: (context,AsyncSnapshot snapshot2) {
                                        if (snapshot2.hasData) {
                                          return SingleChildScrollView(
                                            physics: BouncingScrollPhysics(),
                                            scrollDirection: Axis.vertical,
                                            child: Container(
                                              margin: EdgeInsets.only(
                                                  top: 0, right: 10, left: 10),
                                              height: 280,
                                              width: 350,
                                              child: Card(
                                                child: Padding(padding: EdgeInsets.only(top:20 ),child: ListView.builder(
                                                    itemCount: snapshot2.data.length,
                                                    scrollDirection:
                                                    Axis.vertical,
                                                    itemBuilder:
                                                        (BuildContext context,
                                                        index) {
                                                      return Padding(
                                                          padding: EdgeInsets.only(left:30,top:15),
                                                          child:Column(
                                                            children: [ Row(
                                                                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                                                children: [
                                                                  customtext(
                                                                    text:snapshot2.data[index].name,
                                                                    fontSize: 18,
                                                                    height: 1.5,
                                                                    color: Colors.white,
                                                                    fontweight: FontWeight.bold,
                                                                  ),
                                                                  Padding(padding:EdgeInsets.only(right: 30) ,child: Row(
                                                                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                                                    children: [
                                                                      Padding(padding:EdgeInsets.only(right:8),child: customtext(
                                                                        text:snapshot2.data[index].grade.toString(),
                                                                        fontSize: 18,
                                                                        height: 1.5,
                                                                        color: Colors.white,
                                                                        fontweight: FontWeight.bold,
                                                                      ),),
                                                                      Icon(Icons.file_download,color: Colors.cyanAccent)
                                                                    ],))
                                                                ]),
                                                              Padding(padding: EdgeInsets.only(right:30),child:  Divider(color: Colors.white,),)
                                                            ],

                                                          )
                                                      );
                                                    }),),
                                                semanticContainer: true,
                                                clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                                color: cardcolor,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        30.0)),
                                                elevation: 2,
                                              ),
                                            ),
                                          );
                                        }
                                        else
                                          {
                                            return
                                           Container(
                                           margin: EdgeInsets.only(
                                           top: 0, right: 10, left: 10),
                                        height: 280,
                                        width: 350,
                                        child: Card(
                                        semanticContainer: true,
                                        clipBehavior:
                                        Clip.antiAliasWithSaveLayer,
                                        color: cardcolor,
                                        shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(
                                        30.0)),
                                        elevation: 2,
                                        ),
                                           );
                                          }
                                      }),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 18, bottom: 10, top: 12),
                                    child: customtext(
                                      text: "Follow Your Level",
                                      fontSize: 14,
                                      fontweight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 18, bottom: 10),
                                    child: customtext(
                                      text:
                                          "If Your Admin You Can log in to control teacher  or student  or parent and Admins data according your salahyat",
                                      fontSize: 12,
                                      height: 1.5,
                                    ),
                                  ),
                                  Center(
                                    child: CustomButton(
                                      onPress: () {},
                                      text: "View More",
                                      w: 115,
                                      h: 35,
                                      color: iconcolor,
                                      colortext: Colors.white,
                                    ),
                                  )
                                ])));
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                }):
            Padding(padding:EdgeInsets.all(35),
            child:
            SingleChildScrollView(
              child: Center(
                  child:Column(children: [customtext(
                    text: "ADD Quiz",
                    fontSize: 17,
                    fontweight: FontWeight.bold,
                  ),
                    SizedBox(height:15),
                    Padding(padding: EdgeInsets.only(right: 22,left:22),child: customtext(
                      text:
                      "The Best collection of international schools For All Student In All different of Ages",
                      fontSize: 14,
                      height: 1.5,
                    ),),Container(
                      margin: EdgeInsets.only(top:70),
                      child: Form(
                        key:globalKey,
                        child: Column(
                          children: [
                            CustomTextField(
                                onClick: (value) {
                                 name = value;
                                },
                                hint: "Name",
                                w:370),
                            SizedBox(
                              height: 20,
                            ),
                            CustomTextField(
                                onClick: (value) {
                                  grade = value;
                                },
                                hint: "Grade", w:370),
                            SizedBox(
                              height: 20,
                            ),
                            CustomTextField(
                                onClick: (value) {
                                  StartTime = value;
                                },
                                hint: "StartTime", w:370),
                            SizedBox(
                              height: 20,
                            ),
                            CustomTextField(
                                onClick: (value) {
                                  EndTime = value;
                                },
                                hint: "EndTime", w:370),
                            SizedBox(
                              height: 30,
                            ),
                            CustomButton(
                              onPress: () {
                                if (globalKey.currentState.validate()) {
                                  globalKey.currentState.save();
                                }
                              },
                              text: "ADD",
                              colortext: Colors.white,
                              color: iconcolor,
                            )
                          ],
                        ),
                      ),
                    ),],)
              ),
            )
        )));
  }
}
