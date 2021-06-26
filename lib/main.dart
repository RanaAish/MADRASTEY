import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:learn/view/controrview.dart';
import 'Helper/bindong.dart';
import 'dart:ui' as ui;


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    RenderErrorBox.backgroundColor = Colors.transparent;
    RenderErrorBox.textStyle = ui.TextStyle(color: Colors.transparent);
    return GetMaterialApp(
      debugShowCheckedModeBanner:false,
      initialBinding: Binding(),
      home: Scaffold(
      body:ControlView()
      //ControlView(),
    ));
  }
}

