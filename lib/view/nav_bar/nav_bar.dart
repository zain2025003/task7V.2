import 'package:flutter/material.dart';
import 'package:flutter_application_task2/core/constants/app_colors.dart';
import 'package:flutter_application_task2/view/conversation_screen/chats_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

int _selectedIndex = 0;
List Screens = [ChatsPage()];

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
                /*SvgPicture.asset(
                      AppIcons.menuIcon,
                    ),*/
                IconButton(
                  onPressed: () {
                    /*Navigator.of(context).pushReplacement()*/
                  },
                  icon: Icon(
                    Icons.view_comfy_alt_rounded,
                    size: 30.h,
                  ),
                ),
                if (_selectedIndex == 0) buildIndicator(),
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(LineAwesomeIcons.compass, size: 30.w),
                if (_selectedIndex == 1) buildIndicator(),
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                /*Image.asset(
                      AppIcons.messagesIcon,
                    ),*/
                Stack(children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.email_rounded,
                      size: 30.h,
                    ),
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
                        2.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 6.sp,
                        ),
                      ),
                    ),
                  ),
                ]),
                if (_selectedIndex == 2) buildIndicator(),
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  Icons.person_2_outlined,
                  size: 30.w,
                ),
                /* SvgPicture.asset(
                      AppIcons.profileIcon,
                    ),*/
                if (_selectedIndex == 3) buildIndicator(),
              ],
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}//last update
