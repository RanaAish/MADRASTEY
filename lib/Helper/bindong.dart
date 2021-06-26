
import 'package:learn/core/view_model/home_view_model.dart';
import 'package:learn/core/view_model/auth_viewmodel.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeViewModel());
    Get.lazyPut(() => AuthViewmodel());
  }
}