import 'package:flutter/material.dart';
import 'package:flutter_application_task2/core/constants/app_colors.dart';
import 'package:flutter_application_task2/core/constants/app_icons.dart';
import 'package:flutter_application_task2/core/constants/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListTileProfile extends StatelessWidget {
  const CustomListTileProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(children: [
        CircleAvatar(
          radius: 22.r,
          backgroundImage: AssetImage(AppImages.myAvatar),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: CircleAvatar(
            radius: 7.r,
            backgroundColor: AppColors.activeStatusColor,
          ),
        ),
      ]),
      title: Text(
        "My Messages",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: AppColors.namesColor,
          fontSize: 16.sp,
        ),
      ),
      subtitle: Text(
        "2 new messages",
        style: TextStyle(
            color: AppColors.messagesColor,
            fontWeight: FontWeight.w400,
            fontSize: 14.sp),
      ),
      trailing: Stack(
        children: [
          Image.asset(AppIcons.notificationIcon),
          Positioned(
            top: 0,
            right: 0,
            child: CircleAvatar(
              radius: 5.r,
              backgroundColor: AppColors.smallCircleColor,
            ),
          ),
        ],
      ),
    );
  }
}
