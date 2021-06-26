import '../../constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final Function onClick;
  final double w;

  String _errorMessage(String str) {
    switch (hint) {
      case 'User Name':
        return 'Name is empty !';
      case 'Password':
        return 'Password is empty !';
      case 'ID':
        return 'ID is enpty';
      case 'Code':
        return 'Code is enpty';
      case 'Phone':
        return 'Phone is enpty';
      case 'Sex':
        return 'Sex is enpty';
      case 'E-mail':
        return 'E-mail is enpty';
    }
  }
  CustomTextField(
      {@required this.onClick, @required this.hint,this.w=300});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: w,
      child:
     Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return _errorMessage(hint);
            // ignore: missing_return
          }
        },
        onSaved: onClick,
        obscureText: hint == 'Password' ? true : false,
        cursorColor: primarycolor,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(fontWeight: FontWeight.bold),
          filled: true,
          contentPadding: EdgeInsets.only(left: 15,right: 5,bottom: 5,top: 5),
          fillColor:Colors.white,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.black)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.black)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.black)),
        ),
      ),
    ),
    );
  }
}