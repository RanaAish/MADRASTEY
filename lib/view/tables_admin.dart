import 'package:flutter/material.dart';
import 'package:learn/core/view_model/auth_viewmodel.dart';
import 'package:learn/core/view_model/home_view_model.dart';
import 'package:learn/view/widgets/custombuttun.dart';
import 'package:learn/constants.dart';
import 'package:learn/view/widgets/bottom_navigationbar.dart';
import 'package:learn/view/admincontrol.dart';
import 'package:get/get.dart';
import 'package:learn/model/user.dart';
import 'package:learn/view/widgets/customtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class tablesadmin extends StatefulWidget {
  @override
  _tables_adminState createState() => _tables_adminState();
}

class _tables_adminState extends State<tablesadmin> {
  String username, code, phone, sex, email;
  bool click_student = false, click_teacher = true;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
        init: HomeViewModel(),
        builder: (value) =>GetBuilder<AuthViewmodel>(
            init: AuthViewmodel(),
            builder: (controler) => FutureBuilder(
                future: Get.find<AuthViewmodel>().getallusers(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
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
                         bottomNavigationBar:bottom_navigaton(),
                         backgroundColor: backgroundcolor,
                        body: SingleChildScrollView(
                          child: Padding(
                              padding:
                                  EdgeInsets.only(right: ScreenUtil().setWidth(20), left: ScreenUtil().setWidth(20), top: ScreenUtil().setHeight(20)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: ScreenUtil().setWidth(18), bottom:ScreenUtil().setHeight(10)),
                                    child: customtext(
                                      text: "Tables",
                                      fontSize:ScreenUtil().setSp(25),
                                      fontweight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: ScreenUtil().setWidth(18), bottom:ScreenUtil().setHeight(10)),
                                    child: customtext(
                                      text:
                                          "The Best collection of international the  schools For All Student In All different of  Ages From six years to 15 years",
                                      fontSize:ScreenUtil().setSp( 17),
                                      height: 1.5,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20.w, top: 5.h),
                                    child: SafeArea(
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            CustomButton(
                                              onPress: () {
                                                setState(() {
                                                  click_student = false;
                                                  click_teacher = true;
                                                });
                                              },
                                              color: !click_teacher
                                                  ? Colors.white
                                                  : iconcolor,
                                              colortext: click_teacher
                                                  ? Colors.white
                                                  : Colors.black,
                                              text: "Teacher Table",
                                              w: 150,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 15.w),
                                              child: CustomButton(
                                                onPress: () {
                                                  setState(() {
                                                    click_student = true;
                                                    click_teacher = false;
                                                  });
                                                },
                                                color: !click_student
                                                    ? Colors.white
                                                    : iconcolor,
                                                colortext: click_student
                                                    ? Colors.white
                                                    : Colors.black,
                                                text: "Student Table",
                                                w: 150.w,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    physics: BouncingScrollPhysics(),
                                    scrollDirection: Axis.vertical,
                                  ),
                                  Container(
                                    height: 378.h,
                                    child:
                                        createTable(filtterdata(snapshot.data)),
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: CustomButton(
                                      onPress: () {
                                        print(" data :${snapshot.data.length}");
                                        Get.to(admincontrol(),
                                            arguments:
                                                click_student ? "S" : "T");
                                      },
                                      text: click_student ? "ADD Student":"ADD Teacher",
                                      w: 150.w,
                                      color: iconcolor,
                                      colortext: Colors.white,
                                    ),
                                  )
                                ],
                              )),
                        ));
                  } else {
                    return Scaffold(
                        backgroundColor: Colors.white,
                        body: Center(child: CircularProgressIndicator()));
                  }
                })));
  }

  Widget createTable(List<User> users) {
    List<TableRow> rows = [];
    for (int i = -1; i < users.length; i++) {
      if (i == -1) {
        rows.add(TableRow(children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              "ID",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              "Full Name",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              "Email",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              "Control",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ]));
      } else {
        rows.add(TableRow(children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              users[i].iD.toString(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  Flexible(
                      child: Text(
                    users[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                    softWrap: false,
                    overflow: TextOverflow.clip,
                    maxLines: 1,
                  )),
                ],
              )),
          Padding(
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  Flexible(
                      child: Text(
                          users[i].email == "null"
                              ? "  "
                              : users[i].email.toString(),
                          softWrap: false,
                          overflow: TextOverflow.clip,
                          maxLines: 1))
                ],
              )),
          Padding(
            padding: EdgeInsets.only(top: 12.h, bottom: 12.h, right: 5.w, left: 5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: CustomButton(
                    onPress: () {},
                    text: "D",
                    w: 50.w,
                    fontweight: FontWeight.normal,
                    m: 0,
                    h: 20.h,
                    fsize: 10,
                    color: Colors.redAccent,
                    colortext: Colors.white,
                  ),
                ),
                Flexible(
                    child: Container(
                  margin: EdgeInsets.only(left: 2),
                  child: CustomButton(
                    onPress: () {},
                    text: "E",
                    w: 50.w,
                    fontweight: FontWeight.normal,
                    m: 0,
                    h: 20.h,
                    fsize: ScreenUtil().setSp(10),
                    color: Colors.teal,
                    colortext: Colors.white,
                  ),
                )),
              ],
            ),
          )
        ]));
      }
    }
    // if table donot draw , it is empty
    if (users.length < 9) {
      for (int i = users.length; i < 9; i++) {
        rows.add(TableRow(children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: Text(" "),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Text(" "),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Text(" "),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Text(" "),
          ),
        ]));
      }
    }
    ;

    return Container(
      height: 400.h,
      padding: EdgeInsets.all(1),
      margin: EdgeInsets.only(top: 5.h, left: 20.w, right: 20.h, bottom: 0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.7,
          color: Colors.black,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Container(
        color: table,
        height: 400.h,
        child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Table(
              children: rows,
              border: TableBorder.symmetric(
                inside: BorderSide(width: 1.w),
              ),
            )),
      ),
    );
  }

  List<User> filtterdata(List<User> users) {
    List<User> filtersofteacher = [];
    List<User> filtersofstudents = [];
    for (var user in users) {
      if (user.role == "T         ") {
        filtersofteacher.add(user);
      }
      if (user.role == "S         ") {
        filtersofstudents.add(user);
      }
    }
    return click_teacher ? filtersofteacher : filtersofstudents;
  }
}
