import 'package:flutter/material.dart';

Widget getText(String title, double size, Color color, FontWeight fontWeight,
    String fontFamily) {
  return Text(
    title,
    style: TextStyle(
        fontFamily: fontFamily,
        color: color,
        fontSize: size,
        fontWeight: fontWeight),
  );
}