import 'package:flutter/material.dart';
import 'package:rejister/core/classes/constants/services/media_query_services.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({
    super.key,
    required this.child,
    required this.color,
    this.topPadding,
    this.leftPadding,
    this.rightPadding,
    required this.onPressed, // إضافة معامل onPressed
  });

  final Widget child;
  final Color color;
  final double? topPadding;
  final double? leftPadding;
  final double? rightPadding;
  final VoidCallback onPressed; // تعريف دالة onPressed

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: topPadding ?? 0,
        left: leftPadding ?? 0,
        right: rightPadding ?? 0,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(Responsive.responsiveHeight * 7.22),
            ),
          ),
          backgroundColor: color,
          fixedSize: Size(
            Responsive.responsiveWidth * 309,
            Responsive.responsiveHeight * 51,
          ),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
