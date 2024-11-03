import 'package:flutter/material.dart';
import 'package:flutter_application_task2/core/constants/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFieldFocalApp extends StatelessWidget {
  const CustomTextFieldFocalApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search here",
        hintStyle: TextStyle(
          color: AppColors.hintTFFColor,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
        ),
        filled: true,
        fillColor: Colors.white24,
        contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
