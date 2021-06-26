import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learn/constants.dart';
import 'package:learn/view/widgets/customtext.dart';
import 'package:learn/view/News.dart';
import 'package:get/get.dart';

class listview_widget extends StatelessWidget {

  // static data
  List images =["assets/images/news.png","assets/images/news.png"];
  List content=["If Your Admin You Can log in to control teacher  or student or parent and Admins data ",
    "If Your Admin You Can log in to control teacher  or student or parent and Admins data "
  ];
  List colors=[sky,blue];
  List titles=["News","ORABL"];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 170,
        child: ListView.builder(
        itemCount: 2,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return new Container(
              padding: EdgeInsets.all(10),
              width: 270,
              height: 150,
              child: GestureDetector(
                onTap: (){
                  Get.to(news());
                },
                child: Card(
                color:colors[index] ,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                child: Column(
                  children: [
                    Padding(
                      padding:EdgeInsets.only(top:10,left:10,right:10),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children:[
                          customtext(text:titles[index],fontweight:FontWeight.bold,fontSize: 17,),
                          Image.asset(images[index]),
                        ],),
                    ),
                    Container(
                      padding: EdgeInsets.only(top:10,left: 10),
                      child:
                      customtext(text:content[index],fontSize: 12,maxLine: 3,height: 1.5,)
                      ,
                    ),
                  ],
                )
                ,
              ),));
        }

    ));
  }
}
