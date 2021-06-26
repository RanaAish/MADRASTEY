import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:learn/core/view_model/auth_viewmodel.dart';
import 'package:learn/core/view_model/home_view_model.dart';
import 'package:learn/model/sizeconfig.dart';
import 'package:learn/view/widgets/customtext.dart';
import 'package:learn/view/widgets/Gridview_widget.dart';
import 'package:learn/view/widgets/listview_widget.dart';
import 'package:learn/constants.dart';
import 'package:get/get.dart';
import 'package:learn/view/privacy_policyview.dart';
import 'package:learn/view/splach_view.dart';

class home_view extends StatelessWidget {

  //static data
  List images = [
    "assets/images/travel.png",
    "assets/images/sports.png",
    "assets/images/Activity.png",
    "assets/images/puzzle.png"
  ];
  List word = ["Travel", "Sports", "Activit", "Puzzle"];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double height =MediaQuery.of(context).size.height;
    double width  =MediaQuery.of(context).size.width;
    return SafeArea
      (
      child:GetBuilder<HomeViewModel>(
          init: HomeViewModel(),
          builder: (controler) => Scaffold(
              resizeToAvoidBottomPadding: false,
              drawerEnableOpenDragGesture: false,
              appBar: AppBar(
                  actions: [
                    Padding(
                        padding: EdgeInsets.only(right: 20, top: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                icon: Icon(
                                  Icons.security,
                                  color: Colors.black,
                                ),
                                onPressed: (){
                                  Get.to(privacy_policyview());
                                }),
                            IconButton(
                                icon: Icon(
                                  Icons.logout,
                                  color: Colors.redAccent,
                                ),
                              onPressed: (){
                                  Get.offAll(splachscreen());
                              },
                              ),
                          ],
                        ))
                  ],
                  elevation: 0.0,
                  backgroundColor: backgroundcolor,
                  title: Padding(
                    padding: EdgeInsets.only(top: 16, left: 18),
                    child: Row(children: [
                      CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage:
                          AssetImage('assets/images/person.png')),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: GetBuilder<AuthViewmodel>(
                            init: AuthViewmodel(),
                            builder: (value) => customtext(
                              text: Get.find<AuthViewmodel>().user.name,
                            )),
                      )
                    ]),
                  )),
              backgroundColor: backgroundcolor,
              body: SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(top: 15, left: 15, right: 20),
                    child: Column(children: [
                      listview_widget(),
                      Gridview_widger(),
                      Container(
                          height: 90,
                          child: ListView.builder(
                              itemCount: images.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, index) {
                                return new Padding(
                                    padding: EdgeInsets.only(top: 5, left: 20),
                                    child: Column(
                                      children: [
                                        Container(
                                            width: 65,
                                            height: 65,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/circle.png"),
                                                )),
                                            child: Center(
                                              child: Image.asset(
                                                images[index],
                                                width: 50,
                                                height: 50,
                                              ),
                                            )),
                                        Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: customtext(
                                            text: word[index],
                                          ),
                                        )
                                      ],
                                    ));
                              })),
                    ])),
              )))
    );
  }
}
