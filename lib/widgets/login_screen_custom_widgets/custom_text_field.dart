import 'package:flutter/material.dart';
import 'package:task7_v2/core/classes/constants/services/media_query_services.dart';

class CustomTextfield extends StatelessWidget {
  final String hinttext;
  final Widget? suffixicon;
  final bool obscuretext;
  final TextEditingController controller;

  const CustomTextfield({
    super.key,
    required this.hinttext,
    this.suffixicon,
    required this.obscuretext,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: Responsive.responsiveWidth * 14),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(246, 247, 250, 1),
          borderRadius: BorderRadius.circular(Responsive.responsiveHeight * 10),
        ),
        child: Padding(
          padding: EdgeInsets.only(
              left: Responsive.responsiveWidth * 10, top: 15.88, bottom: 14),
          child: TextField(
            controller: controller,
            obscureText: obscuretext,
            decoration: InputDecoration(
              suffixIcon: suffixicon,
              border: InputBorder.none,
              hintText: hinttext,
              hintStyle: const TextStyle(
                color: Color.fromRGBO(157, 159, 160, 1),
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
