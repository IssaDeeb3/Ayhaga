import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  double height = 40.0,
  Color background = Colors.redAccent,
  bool isUpperCase = true,
  double radius = 5.0,
  required void Function()? function,
  required String text,
}) =>
    Container(
      height: height,
      width: width,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius), color: background),
    );

Widget defaultformfield({
  required TextEditingController controller,
  required TextInputType type,
  Function(String)? onSumbmit,
  Function(String)? onChanged,
  bool isPassword = false,
  required String? Function(String?)? validate,
  required String hint,
   required IconData prefix,
   IconData? suffix,
   Function()?  sufixOnpressed,
}) => TextFormField(
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: onSumbmit,
      onChanged: onChanged,
      validator: validate,
      obscureText: isPassword ,
      decoration: InputDecoration(
          hintText: hint
          ,
          border: OutlineInputBorder(),
          prefix: Icon(prefix),
          suffixIcon: suffix != null ? IconButton(
              onPressed: sufixOnpressed,
              icon:Icon(suffix )) : null
    ),

    );
