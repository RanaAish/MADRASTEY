import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:learn/view/widgets/customtext.dart';
import '../constants.dart';
import 'package:learn/core/view_model/auth_viewmodel.dart';
import 'package:get/get.dart';
import 'package:learn/model/result.dart';

class resultview extends StatefulWidget {
  @override
  _resultviewState createState() => _resultviewState();
}

class _resultviewState extends State<resultview> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor:backgroundcolor,
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
    body:GetBuilder<AuthViewmodel>(
    init: AuthViewmodel(),
    builder:(controler) =>FutureBuilder(
          future:Get.find<AuthViewmodel>()
              .getresult(Get.find<AuthViewmodel>().user.iD),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Container(
                child:  SingleChildScrollView(
                  child:Padding(
                      padding:
                      EdgeInsets.only(right: 0, left: 20, top: 20),
                      child:Column(
                          children: [
                            Container (
                                height: 450,
                                width: double.infinity, child:Stack(
                              children: [
                                Positioned(
                                  right:-40,
                                  top:-6,
                                  child: Container(
                                    child: Opacity(child:Image.asset('assets/images/graduation.png',),opacity: 0.30,),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.only(left: 18, bottom: 10),
                                  child:customtext(
                                    text: "Result",
                                    fontSize: 22,
                                    fontweight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.only(left: 18, bottom: 0,top: 40),
                                  child: customtext(
                                    text:
                                    "The Best collection of international schools",
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.only(left: 18, bottom: 0,top: 70),
                                  child: customtext(
                                    text:
                                    "For All Student In All different Ages",
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                                Positioned.fill(
                                  top: 215,
                                  right: 12,
                                  child:  Container(
                                    height: 250,
                                    child: createTable(snapshot.data),
                                  ),),
                              ],
                            )),
                            Container(height: 300,
                              child: Stack(children: [
                                Positioned(
                                  child: Container(
                                    margin: EdgeInsets.only(top:37,right:15,left: 10),
                                    height: 75,
                                    width: 335,
                                    child:Card(
                                      child:Padding(
                                        padding: EdgeInsets.only(left:27,top: 15,),
                                        child: customtext(
                                          text:
                                          "The Best collection of international schools For All Student In All different Ages",
                                          fontSize: 13,
                                          height: 1.5,
                                        ),
                                      ),
                                      clipBehavior:Clip.antiAliasWithSaveLayer,
                                      color:green,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25.0)),
                                      elevation:2,),),
                                ),
                                Positioned(
                                    top:23,
                                    child: Image.asset('assets/images/icon.png',width: 50,height: 50,))
                              ],),)
                          ])),
                ),
              );
            }
              else
      {
        return Center(child: CircularProgressIndicator());
      }
          }),
    )
    );
  }

  Widget createTable(List<Result>result) {
    List<TableRow> rows = [];
    for (int i = -1; i < result.length; i++) {
      if (i == -1) {
        rows.add(TableRow(children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: Text("Result",style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Text("Max",style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Text("Med",style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Text("Min",style: TextStyle(fontWeight: FontWeight.bold),),
          )
        ]));
      } else {
        rows.add(TableRow(children: [
          Padding(
              padding: EdgeInsets.all(12),
              child: Row(children: [Flexible(child:Text(result[i].courseName,style: TextStyle(fontWeight: FontWeight.bold),softWrap:false,overflow:TextOverflow.clip,maxLines: 1,)),],)
          ),
          Padding(
              padding: EdgeInsets.all(12),
              child: Text(result[i].mAX.toString(),style: TextStyle(fontWeight: FontWeight.bold),softWrap:false,overflow:TextOverflow.clip,maxLines: 1),
          ),
          Padding(
              padding: EdgeInsets.all(12),
              child: Text(result[i].mED.toString(),style: TextStyle(fontWeight: FontWeight.bold),softWrap:false,overflow:TextOverflow.clip,maxLines: 1)),
          Padding(
            padding: EdgeInsets.all(12),
            child:Text(result[i].mIN.toString(),style: TextStyle(fontWeight: FontWeight.bold),softWrap:false,overflow:TextOverflow.clip,maxLines: 1)
          )
        ]));
      }
    }
    if(result.length <5)
    {
      for(int i=result.length;i<=5;i++)
      {
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
    };

    return Container(
      height:250,
      padding: EdgeInsets.all(1),
      margin: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.7,
          color: Colors.black,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Container(
        color: table,
        height: 250,
        child:SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Table(
              children: rows,
              border: TableBorder.symmetric(
                inside: BorderSide(width: 1),
              ),
            )),),
    );
  }
}


