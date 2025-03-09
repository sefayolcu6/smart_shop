import 'package:flutter/material.dart';

Widget appDivider(
    {Color? color,
    double? endIndent,
    double? indent,
    double? height,
    double? thickness}) {
  return Divider(
    color: color,
    endIndent: endIndent,
    height: height,
    indent: indent,
    thickness: thickness,
  );
}
Widget appVerticalDivider(
    {Color? color,
    double? endIndent,
    double? indent,
    double? height,
    double? thickness}) {
  return VerticalDivider(
    color: color,
    endIndent: endIndent,
    indent: indent,
    thickness: thickness,
  );
}
