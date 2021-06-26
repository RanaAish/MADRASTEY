import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:learn/view/home_view.dart';
import 'package:learn/view/quizes_view.dart';
import 'package:learn/view/result_view.dart';
import 'package:learn/view/profile_view.dart';

class HomeViewModel extends GetxController {

  int _navigationvalue=0;
  Widget _currentscreen=home_view();

  get navigatovalue =>_navigationvalue;
  get currentscreen => _currentscreen;



  void changeselectedvalue(int selectedvalue)
  {
    _navigationvalue=selectedvalue;
     update();
    switch(selectedvalue)
    {
      case 0:
        {
          _currentscreen=home_view();
          break;
        }
      case 1:
        {
          _currentscreen= quizes();
          break;
        }
      case 2:
        {
          _currentscreen=resultview();
          break;
        }
      case 3:
        {
          _currentscreen=profile_view();
          break;
        }
    }
  }
}