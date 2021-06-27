import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learn/view/widgets/customtext.dart';
import 'package:learn/constants.dart';
import 'package:learn/view/widgets/bottom_navigationbar.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class news extends StatelessWidget {

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
      body:SingleChildScrollView
        (child: Padding(

        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Padding(padding: EdgeInsets.only(left: 18,bottom: 15),child: customtext(text: "News",fontSize: 25,fontweight: FontWeight.bold,),),
            create_ccard("assets/images/classroom.png"),
            create_ccard("assets/images/building.png",),
            create_ccard("assets/images/pencils.png"),
          ],
        ),
      ),),
    );
  }
  Widget create_ccard(String image)
  {
    return Container(
        margin: EdgeInsets.only(bottom: 8),
        height:ScreenUtil().setHeight(180),
        width: ScreenUtil().setWidth(350),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Card(
            color: sky,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
            child:
            Row(
              children: [
                Padding(padding:EdgeInsets.only(top: ScreenUtil().setHeight(38),left: 6.w) ,
                  child: Column(
                    children: [
                      customtext(text: "importance of tourism",
                        fontweight: FontWeight.bold,
                        fontSize: 17,),
                      Padding(padding:EdgeInsets.only(top: 20.h),child: customtext(
                        text: "control Teacher or Student ",
                        fontSize: 14,
                      ),),
                      Padding(padding: EdgeInsets.only(top: 10.h),child: customtext(
                        text: "student control or Admin",
                        fontSize: 14,
                      ),),
                      Padding(padding: EdgeInsets.only(top: 10.h),child: customtext(
                        text: "Control in school",
                        fontSize: 14,
                      ),)
                    ],),),

                Padding(padding:EdgeInsets.all(8),child:Image.asset(image,width: 130.w,height: 170.h,),),
              ],),
          ),
        ));
  }
}
