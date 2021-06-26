import 'package:flutter/material.dart';

import '../../constants.dart';
import 'customtext.dart';

class CustomButtonIcon extends StatelessWidget {
  final Color color;
  final double w;
  final double h;
  final double m;
  Icon icon;

  final Function onPress;

  CustomButtonIcon({
    @required this.onPress,
    this.color =secondarycolor,
    this.w =128,
    this.h=40,
    this.m=16,
    this.icon

  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom:m),
        width: w,
        height: h,
        child: FlatButton(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
            ),
            // padding: EdgeInsets.all(10),
            onPressed: onPress,
            color:color,
            child:Center(child: Align(alignment: Alignment.center,child: icon,),)
        ,));
  }
}