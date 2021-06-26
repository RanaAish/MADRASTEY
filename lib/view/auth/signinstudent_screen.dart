import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:learn/core/view_model/auth_viewmodel.dart';
import 'package:learn/core/view_model/home_view_model.dart';
import 'package:learn/view/widgets/customtext.dart';
import 'package:learn/view/widgets/custombuttun.dart';
import '../../constants.dart';
import 'package:learn/view/widgets/custom_textfield.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class signinstudent extends GetWidget<AuthViewmodel> {
  String username, password;
  String text = "", role = "";
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  signinstudent({this.text, this.role});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return GetBuilder<HomeViewModel>(
        init: HomeViewModel(),
        builder: (controler) => Scaffold(
              body: Stack(children: <Widget>[
                Positioned.fill(
                  left: -20,
                  top: -5,
                  child: Image.asset(
                    "assets/images/background_left.png",
                    fit: BoxFit.none,
                    alignment: Alignment.topLeft,
                  ),
                ),
                Positioned.fill(
                  right: -50,
                  top: -5,
                  child: Image.asset(
                    "assets/images/background_right.png",
                    fit: BoxFit.none,
                    alignment: Alignment.topRight,
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 30,
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: 40,
                    height: 40,
                  ),
                ),
                Positioned.fill(
                  child: Image.asset(
                    "assets/images/background_bottom.png",
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.bottomLeft,
                  ),
                ),
                Positioned(
                  top: 210,
                  left: width / 9,
                  child: Form(
                    key: globalKey,
                    child: Column(
                      children: [
                        customtext(
                          text: text,
                          fontSize: 26,
                          color: primarycolor,
                          alignment: Alignment.center,
                          fontweight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        CustomTextField(
                            onClick: (value) {
                              print(value);
                              username = value;
                            },
                            hint: "User Name"),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                            onClick: (value) {
                              password = value;
                            },
                            hint: "Password"),
                        SizedBox(
                          height: 50,
                        ),
                        CustomButton(
                          onPress: () {
                            if (globalKey.currentState.validate()) {
                              globalKey.currentState.save();
                              try {
                                controller.login(username, password, role);
                              } catch (e) {
                                Get.snackbar("Error Login account", e.message);
                              }
                            }
                          },
                          text: "sign in",
                          color: primarycolor,
                          colortext: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ]),
            ));
  }
}
