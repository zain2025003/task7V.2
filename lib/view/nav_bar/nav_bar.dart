import 'package:flutter/material.dart';
import 'package:flutter_application_task2/core/constants/app_colors.dart';
import 'package:flutter_application_task2/core/constants/app_icons.dart';
import 'package:flutter_application_task2/view/conversation_screen/chats_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

int _selectedIndex = 0;
List<Widget> Screens = [
  ChatsPage(),
  // Add other pages as needed
];

class _NavBarState extends State<NavBar> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget buildIndicator() => Container(
        margin: EdgeInsets.only(top: 4.h),
        width: 16.w,
        height: 4.h,
        decoration: BoxDecoration(
          color: AppColors.navBarActiveIconColor,
          borderRadius: BorderRadius.circular(3.r),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: AppColors.navBarActiveIconColor,
        unselectedItemColor: AppColors.navBarIconsColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Column(
              children: [
                SvgPicture.asset(
                  AppIcons.menuIcon,
                  height: 30.h,
                ),
                if (_selectedIndex == 0) buildIndicator(),
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                SvgPicture.asset(
                  AppIcons.discoveryIcon,
                  height: 30.h,
                ),
                if (_selectedIndex == 1) buildIndicator(),
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      AppIcons.messagesIcon,
                      height: 30.h,
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        margin: EdgeInsets.only(top: 2.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 4.w,
                          vertical: 2.h,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.navBarActiveIconColor,
                          borderRadius: BorderRadius.circular(7.r),
                        ),
                        child: Text(
                          '2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 6.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                if (_selectedIndex == 2) buildIndicator(),
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                SvgPicture.asset(
                  AppIcons.profileIcon,
                  height: 30.h,
                ),
                if (_selectedIndex == 3) buildIndicator(),
              ],
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
