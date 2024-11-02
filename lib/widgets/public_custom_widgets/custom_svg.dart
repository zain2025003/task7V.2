import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvg extends StatelessWidget {
  const CustomSvg(
      {super.key,
      required this.pictureLink,
      required this.pictureWidth,
      required this.pictureHeight,
      this.topPadding,
      this.letfPadding,
      this.rightPadding,
      this.bottomPadding,
      this.color});
  final String pictureLink;
  final double pictureWidth;
  final double pictureHeight;
  final double? topPadding;
  final double? letfPadding;
  final double? rightPadding;
  final double? bottomPadding;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: topPadding ?? 0,
          left: letfPadding ?? 0,
          right: rightPadding ?? 0,
          bottom: bottomPadding ?? 0),
      child: SvgPicture.asset(
        pictureLink,
        width: pictureWidth,
        height: pictureHeight,
        // ignore: deprecated_member_use
        color: color,
      ),
    );
  }
}
