import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  double? fontSize;
  FontWeight? fontWeight;
  String? fontFamily;
  Color? color;
  double? letterSpacing;
  TextOverflow? overflow;
  CustomText({
    required this.text,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.color,
    this.overflow,
    this.letterSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        color: color,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
