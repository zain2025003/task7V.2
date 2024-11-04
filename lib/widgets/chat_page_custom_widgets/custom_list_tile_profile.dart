import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task7_v2/core/classes/constants/app_colors.dart';
import 'package:task7_v2/core/classes/constants/app_icons.dart';
import 'package:task7_v2/core/classes/constants/app_images.dart';

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
          SvgPicture.asset(AppIcons.notificationIcon),
        ],
      ),
    );
  }
}
