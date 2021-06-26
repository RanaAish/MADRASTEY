import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:flutter/material.dart';
import 'package:learn/core/view_model/home_view_model.dart';
import 'package:learn/view/widgets/bottom_navigationbar.dart';
import 'package:get/get.dart';
import 'package:learn/core/view_model/auth_viewmodel.dart';
import 'package:learn/view/splach_view.dart';

class ControlView extends GetWidget<AuthViewmodel> {


  @override
  Widget build(BuildContext context) {
   return (Get.find<AuthViewmodel>().name == null)
           ? splachscreen():
          GetBuilder<HomeViewModel>(
           builder: (controller) => Scaffold(
            body: controller.currentscreen,
           bottomNavigationBar:bottom_navigaton( ),
      ));
    }
  }
