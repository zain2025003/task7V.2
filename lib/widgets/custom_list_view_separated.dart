import 'package:flutter/material.dart';
import 'package:flutter_application_task2/core/constants/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViewSeparatedFocalApp extends StatelessWidget {
  const CustomListViewSeparatedFocalApp({
    super.key,
    required this.names,
    required this.avatarPaths,
    required this.isActive,
    required this.messages,
    required this.times,
    required this.unreadMessages,
  });

  final List<String> names;
  final List<String> avatarPaths;
  final List<bool> isActive;
  final List<String> messages;
  final List<String> times;
  final List<int> unreadMessages;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: names.length,
      separatorBuilder: (context, index) => Divider(
        color: Colors.grey.shade400,
        thickness: 1.h,
        endIndent: 10.w,
        indent: 10.w,
      ),
      itemBuilder: (context, index) {
        return ListTile(
          leading: Stack(
            children: [
              CircleAvatar(
                radius: 24.r,
                backgroundImage: AssetImage(avatarPaths[index]),
              ),
              if (isActive[index])
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 6.r,
                    backgroundColor: Colors.green,
                  ),
                ),
            ],
          ),
          title: Text(
            names[index],
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: AppColors.namesColor,
                fontSize: 14.sp),
          ),
          subtitle: Text(
            messages[index],
            style: TextStyle(
                color: AppColors.messagesColor,
                fontWeight: FontWeight.w400,
                fontSize: 12.sp),
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    times[index],
                    style: TextStyle(
                      color: AppColors.timesColor,
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Icon(
                    Icons.arrow_back_ios_sharp,
                    size: 20.sp,
                    color: AppColors.timesColor,
                  ),
                ],
              ),
              if (unreadMessages[index] > 0)
                Container(
                  margin: EdgeInsets.only(top: 5.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.w,
                    vertical: 2.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.numMessagesColor,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Text(
                    unreadMessages[index].toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
