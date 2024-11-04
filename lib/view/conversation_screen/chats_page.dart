import 'package:flutter/material.dart';

import 'package:flutter_application_task2/core/constants/app_images.dart';
import 'package:flutter_application_task2/widgets/custom_list_tile_profile.dart';
import 'package:flutter_application_task2/widgets/custom_list_view_separated.dart';
import 'package:flutter_application_task2/widgets/custom_text_field.dart';

import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatsPage extends StatefulWidget {
  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  final List<String> names = [
    "Roger Hulg",
    "Hilman Nuris",
    "Erick Lawrence",
    "Jennifer Dunn",
    "Andy Warhol",
    "Thomas Partrey"
  ];

  final List<String> messages = [
    "Hey, can I ask something? I need your help please",
    "Thanks for your information dude!",
    "Did you take the free illustration class yesterday?",
    "Hey Samuel, where did you get your point? Can we exchange?",
    "That’s true bro, hahaha",
    "Hi"
  ];

  final List<String> times = [
    "15 min",
    "Yesterday",
    "Yesterday",
    "2 weeks ago",
    "14/08/20",
    "14/08/20"
  ];

  final List<int> unreadMessages = [4, 0, 1, 2, 0, 0];

  final List<String> avatarPaths = [
    AppImages.hilman,
    AppImages.roger,
    AppImages.erick,
    AppImages.andy,
    AppImages.jennifer,
    AppImages.jennifer
  ];

  final List<bool> isActive = [true, false, true, true, false, false];

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812), // 960,480
      minTextAdapt: true,
      builder: (context, child) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                CustomListTileProfile(),
                Padding(
                  padding: EdgeInsets.all(15.w),
                  child: Stack(children: [
                    CustomTextFieldFocalApp(),
                    Positioned(
                      bottom: 2.h,
                      right: 1.w,
                      child: Padding(
                        padding: EdgeInsets.all(2.w),
                        child: Container(
                          height: 50.h,
                          width: 60.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.r),
                            color: Colors.orange,
                          ),
                          child: Center(
                            child: Transform.rotate(
                              angle: 3.14 * 3 / 2,
                              child: Icon(
                                LineAwesomeIcons.search_solid,
                                color: Colors.white,
                                size: 30.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                Expanded(
                  child: CustomListViewSeparatedFocalApp(
                      names: names,
                      avatarPaths: avatarPaths,
                      isActive: isActive,
                      messages: messages,
                      times: times,
                      unreadMessages: unreadMessages),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
