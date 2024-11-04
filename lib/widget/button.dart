import 'package:flutter/material.dart';
import 'package:task6/core/services/media_query_service.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final void Function() onPressed;
  final Widget child;
  const CustomButton(
      {required this.color, required this.child, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: Responsive.responsiveWidth * 14),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            fixedSize: Size(Responsive.responsiveWidth * 309,
                Responsive.responsiveHeight * 51),
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(Responsive.responsiveHeight * 7.22),
            ),
          ),
          child: child),
    );
  }
}
