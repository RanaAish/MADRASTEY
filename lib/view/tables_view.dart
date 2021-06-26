import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learn/constants.dart';
import 'package:learn/core/view_model/auth_viewmodel.dart';
import 'package:learn/view/widgets/bottom_navigationbar.dart';
import 'package:learn/view/widgets/customtext.dart';
import 'package:learn/model/course model.dart';
import 'package:get/get.dart';

class tables extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      bottomNavigationBar: bottom_navigaton(),
      appBar: AppBar(
        backgroundColor: backgroundcolor,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color:Colors.black,
          ),
        ),
      ),
      body: GetBuilder<AuthViewmodel>(
     init: AuthViewmodel(),
    builder:(controler) =>FutureBuilder(
    future:Get.find<AuthViewmodel>()
        .getallcourses(Get.find<AuthViewmodel>().user.iD),
    builder: (context, snapshot) {
    if (snapshot.hasData) {
      return
      Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
        child:  Padding(
          padding: EdgeInsets.all(30),
          child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(left: 18,bottom: 15),child: customtext(text: "Tables",fontSize: 25,fontweight: FontWeight.bold,),),
                Padding(padding: EdgeInsets.only(left: 18,bottom: 15),child: customtext(text: "The Best collection of international the  schools For All Student In All different of  Ages From six years to 15 years",
                  fontSize: 17,height: 1.5,),),
                Container(
                  width: 350,
                  height: 600,
                  child:  snapshot.data.length !=0?GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount:snapshot.data.length,
                    itemBuilder: (BuildContext context, i) {
                      return new Container(
                          width: 156,
                          height: 156,
                          padding: EdgeInsets.all(5),
                          child:Card(
                              semanticContainer: true,
                              clipBehavior:Clip.antiAliasWithSaveLayer,
                              color:sky ,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0)),
                              elevation:2,
                              child:  Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 25),
                                    decoration: BoxDecoration(image: new DecorationImage(image:snapshot.data[i].name=="Arabic"||snapshot.data[i].name=="English"||
                                        snapshot.data[i].name=="Math"||snapshot.data[i].name=="Science"||
                                        snapshot.data[i].name=="Tech"||snapshot.data[i].name=="French"
                                        ?AssetImage("assets/images/${snapshot.data[i].name}.png"):AssetImage("assets/images/Arabic.png"))),
                                  ),
                                  Positioned(
                                      top: 40,
                                      left: 15,
                                      child:  Column(
                                        children: [
                                          customtext(text:snapshot.data[i].name,fontSize: 17,fontweight: FontWeight.bold,),
                                          Padding(padding: EdgeInsets.only(top:8),child:  customtext(text:"${snapshot.data[i].name} Teaching",fontSize: 15,fontweight: FontWeight.bold,),),
                                          Padding(padding: EdgeInsets.only(top: 10),child: customtext(text: "Price : ${snapshot.data[i].price}",),),
                                          Padding(padding: EdgeInsets.only(top: 10),child: customtext(text: "Hours : ${snapshot.data[i].hours}",) ,)
                                        ],
                                      )
                                  )
                                ],
                              )
                          )

                      );
                    },
                  ):Padding(padding:EdgeInsets.only(top: 100,left: 40),child:customtext(
                    text: "You donot Login in any courses",
                    fontSize: 17,
                    fontweight: FontWeight.bold,
                    color: Colors.redAccent,
                )))
              ]),
        ),),);
    }
    else
      {
        return Center(child:CircularProgressIndicator());
      }
    })));
  }
}
