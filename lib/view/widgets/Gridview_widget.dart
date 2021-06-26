import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learn/core/view_model/auth_viewmodel.dart';
import 'package:learn/model/card_model.dart';
import 'package:learn/view/widgets/customtext.dart';
import 'package:get/get.dart';
import 'package:learn/view/tables_view.dart';


import '../tables_admin.dart';

class Gridview_widger extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    double width  =MediaQuery.of(context).size.width;
    return SafeArea(child: Container(
      height: 370,
      width: width,
      child: GridView.builder(
        physics: ScrollPhysics(), // to disable GridView's scrolling
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemCount:cardmodel.card.length,
        itemBuilder: (BuildContext context, i) {
          return new  Container(
            padding: EdgeInsets.all(2),
            child:GetBuilder<AuthViewmodel>(
                init:AuthViewmodel(),
                builder:(value)=>GestureDetector(
                    onTap: ()
                    {
                      if(cardmodel.card[i]["title"]=="Tabels"&& value.user.role != "A")
                      {
                        Get.to(tables());
                      }
                    if(cardmodel.card[i]["title"]=="Tabels"&& value.user.role == "A")
                      {
                        Get.to(tablesadmin());
                      }
                    },
                    child: SafeArea(child: Card(
                        semanticContainer: true,
                        clipBehavior:Clip.antiAliasWithSaveLayer,
                        color:cardmodel.card[i]["color"] ,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        elevation:2,
                        child:Flexible(child:Column(
                          children: [
                            Padding(
                              padding:EdgeInsets.only(top: 20,left:10,right: 5),
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                children:[
                                  customtext(text:cardmodel.card[i]["title"],fontweight:FontWeight.bold,fontSize: 17,),
                                  Image.asset(cardmodel.card[i]["image"]),
                                ],),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10,left: 10),
                              child: customtext(text:cardmodel.card[i]["content1"],fontSize: 12,height: 1.5,),
                            ),
                          ],
                        ))
                    ),))
            ),
          );
        },
      ),
    ));
  }
}
