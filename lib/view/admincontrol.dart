import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:learn/view/widgets/bottom_navigationbar.dart';
import 'package:learn/view/widgets/custom_textfield.dart';
import 'package:learn/view/widgets/custombuttun.dart';
import 'package:learn/constants.dart';
import 'package:learn/core/view_model/auth_viewmodel.dart';
import 'package:get/get.dart';
import 'package:learn/view/tables_admin.dart';
import 'package:learn/view/widgets/customtext.dart';

class admincontrol extends GetWidget<AuthViewmodel> {
  @override
  Widget build(BuildContext context) {
    int id;
    String username, code, phone, sex, email;
    String role=Get.arguments;
    final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
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
        body:Padding(padding:EdgeInsets.all(35),
    child:SingleChildScrollView(
      child: Center(
          child:Column(children: [customtext(
            text: "Admin Control",
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
                        username = value;
                      },
                      hint: "User Name",
                  w:370),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                      onClick: (value) {
                        code = value;
                      },
                      hint: "Code", w:370),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                      onClick: (value) {
                        phone = value;
                      },
                      hint: "Phone", w:370),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                      onClick: (value) {
                        sex = value;
                      },
                      hint: "Sex", w:370),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                      onClick: (value) {
                        email = value;
                      },
                      hint: "E-mail", w:370),
                  SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                    onPress: () {
                      if (globalKey.currentState.validate()) {
                        globalKey.currentState.save();
                        controller.addusers(username, code, phone, sex, email,role);
                        Get.to(tablesadmin());
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
    )));
  }
}
