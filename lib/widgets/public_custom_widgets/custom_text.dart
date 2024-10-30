import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.textColor,
      this.letterSpacing,
      this.fontWeight,
      this.topPadding,
      this.leftPadding,
      this.rightPadding,
      this.bottomPadding,
      this.fontFamily,
      this.heightText});
  final String text;
  final double fontSize;
  final Color textColor;
  final double? letterSpacing;
  final FontWeight? fontWeight;
  final double? topPadding;
  final double? leftPadding;
  final double? rightPadding;
  final double? bottomPadding;
  final String? fontFamily;
  final double? heightText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: topPadding ?? 0,
          left: leftPadding ?? 0,
          right: rightPadding ?? 0,
          bottom: bottomPadding ?? 0),
      child: Text(
        text,
        style: TextStyle(
            color: textColor,
            fontWeight: fontWeight,
            letterSpacing: letterSpacing,
            fontFamily: fontFamily,
            fontSize: fontSize,
            height: heightText),
      ),
    );
  }
}
