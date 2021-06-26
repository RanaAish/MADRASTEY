import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:learn/constants.dart';
import 'package:learn/core/view_model/home_view_model.dart';
import 'package:get/get.dart';
import 'package:learn/view/controrview.dart';

class bottom_navigaton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
        init:HomeViewModel(),
         builder:(controler)=>
         Container(
         decoration: BoxDecoration(
         color: backgroundcolor,
         boxShadow: [
         BoxShadow(
         color:Colors.black,
         ),
         ],
         ),
         child:
        BottomNavigationBar(
        iconSize: 20,
        elevation: 0.0,
        backgroundColor:backgroundcolor,
        selectedItemColor: iconcolor,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        currentIndex: controler.navigatovalue,
        onTap: (selectedvalue){
          controler.changeselectedvalue(selectedvalue);
          Get.off(ControlView());
        },
            type:BottomNavigationBarType.fixed ,
        items:[
           BottomNavigationBarItem(
            icon:Icon(Icons.grid_view),
            label: 'Home'
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.create_outlined),
              label: 'Quizes'
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.book),
              label: 'Result'
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.perm_identity),
              label:'Profile'
          ),
        ]
    )));
  }
}
