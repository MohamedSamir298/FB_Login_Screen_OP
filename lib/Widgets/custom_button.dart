import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color color = Colors.blue,
  bool isUpperCase = true,
  double radius = 0.0,
  required VoidCallback function,
  required String text,
})=>Container(
  width: width,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    color: color,
  ),
  child: MaterialButton(
    onPressed: function,
    child: Text(
      isUpperCase?text.toUpperCase():text,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
);