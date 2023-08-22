import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText(
      {Key? key,
      required this.text,
      this.fontSize,
      this.color,
      this.fontWeight,
      this.height,
      this.fontFamily,
      this.wordSpacing,
      this.textDecoration})
      : super(key: key);

  final String text;
  final double? fontSize;
  Color? color;
  FontWeight? fontWeight;
  double? height;
  double? wordSpacing;
  String? fontFamily;
  TextDecoration? textDecoration;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        height: height,
        fontFamily: fontFamily,
        wordSpacing: wordSpacing,
        decoration: textDecoration,
      ),
    );
  }
}
