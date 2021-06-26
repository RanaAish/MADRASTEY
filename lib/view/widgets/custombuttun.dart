import 'package:flutter/material.dart';

import '../../constants.dart';
import 'customtext.dart';

class CustomButton extends StatelessWidget {
  final String text;

  final FontWeight fontweight;

  final Color color;
  final Color colortext;
  final double w;
  final double h;
  final double fsize;
  final double m;

  final Function onPress;

  CustomButton({
    @required this.onPress,
    this.text = 'Write text ',
    this.color =secondarycolor,
    this.fontweight=FontWeight.bold,
    this.colortext,
    this.w =128,
    this.h=40,
    this.fsize=17,
    this.m=16

  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom:m),
        width: w,
        height: h,
        child:FlatButton(
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(30.0),
      ),
     // padding: EdgeInsets.all(10),
      onPressed: onPress,
      color:color,
      child: customtext(
        alignment: Alignment.center,
        text: text,
        color: colortext,
        fontSize:fsize,
        fontweight:fontweight ,
      ),
    ));
  }
}