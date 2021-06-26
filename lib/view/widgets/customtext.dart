import 'package:flutter/material.dart';
class customtext extends StatelessWidget {

  final String text;
  final double fontSize;
  final Color color;
  final String fontfamily;
  final FontWeight fontweight;
  final Alignment alignment;
  final int maxLine;
  final double height;

  // initial values
  customtext({this.text ="",this.fontSize=14,this.color=Colors.black,this.fontfamily="SegoeUI",this.alignment = Alignment.topLeft,
    this.maxLine,this.fontweight,
    this.height=1});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style:TextStyle(
        color:color,
        fontSize:fontSize,
        fontFamily:fontfamily, height: height,
          fontWeight:fontweight
        ),
        maxLines: maxLine,
      ),
    );
  }
}
