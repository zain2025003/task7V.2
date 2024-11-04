import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task7_v2/core/classes/constants/app_colors.dart';
import 'package:task7_v2/core/classes/constants/app_images.dart';
import 'package:task7_v2/view/screens/home/home_page.dart';
import 'package:task7_v2/view/screens/navigation_bar/nav_bar.dart';
import 'package:task7_v2/widgets/chat_page_custom_widgets/chate_page_custom_text_field.dart';
import 'package:task7_v2/widgets/chat_page_custom_widgets/custom_list_tile_profile.dart';
import 'package:task7_v2/widgets/chat_page_custom_widgets/custom_list_view.dart';

class ChatsPage extends StatefulWidget {
  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  int _selectedIndex = 0;

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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: _selectedIndex,
              children: [
                HomePage(),
                NotificationScreen(),
                ChatScreen(
                  names: names,
                  avatarPaths: avatarPaths,
                  isActive: isActive,
                  messages: messages,
                  times: times,
                  unreadMessages: unreadMessages,
                ),
                ProfileScreen(),
              ],
            ),
          ),
          bottomNavigationBar: CustomBottomNavigationBar(
            selectedIndex: _selectedIndex,
            onItemTapped: _onItemTapped,
          ),
        );
      },
    );
  }

  Widget indicator() {
    return Container(
      width: 20,
      height: 6,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

// صفحات نموذجية

class ChatScreen extends StatelessWidget {
  final List<String> names;
  final List<String> messages;
  final List<String> times;
  final List<int> unreadMessages;
  final List<String> avatarPaths;
  final List<bool> isActive;

  ChatScreen({
    required this.names,
    required this.messages,
    required this.times,
    required this.unreadMessages,
    required this.avatarPaths,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
            unreadMessages: unreadMessages,
          ),
        ),
      ],
    );
  }
}

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Notifications Screen'));
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Profile Screen'));
  }
}
