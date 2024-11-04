import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task7_v2/core/classes/constants/app_colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  CustomBottomNavigationBar({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 4.h), // خفض الأيقونة لأسفل
                  // استبدال الأيقونة هنا
                  ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      selectedIndex == 0
                          ? AppColors.navBarActiveIconColor
                          : Colors.grey,
                      BlendMode.srcIn,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/menuIcon1.svg', // استبدال أيقونة الصفحة الرئيسية
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                  if (selectedIndex == 0)
                    Container(
                      height: 4.h, // زيادة سماكة المؤشر
                      width: 24.w, // عرض المؤشر
                      decoration: BoxDecoration(
                        color: AppColors.navBarActiveIconColor,
                        borderRadius: BorderRadius.circular(4), // إضافة radius
                      ),
                    ),
                ],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 4.h), // خفض الأيقونة لأسفل
                  // استبدال الأيقونة هنا
                  ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      selectedIndex == 1
                          ? AppColors.navBarActiveIconColor
                          : Colors.grey,
                      BlendMode.srcIn,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/discoveryIcon1.svg', // أيقونة الإشعارات
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                  if (selectedIndex == 1)
                    Container(
                      height: 4.h, // زيادة سماكة المؤشر
                      width: 24.w, // عرض المؤشر
                      decoration: BoxDecoration(
                        color: AppColors.navBarActiveIconColor,
                        borderRadius: BorderRadius.circular(4), // إضافة radius
                      ),
                    ),
                ],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Stack(
                alignment: Alignment
                    .topRight, // محاذاة الشارة في الزاوية العلوية اليمنى
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 4.h), // خفض الأيقونة لأسفل
                      ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          selectedIndex == 2
                              ? AppColors.navBarActiveIconColor
                              : Colors.grey,
                          BlendMode.srcIn,
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/messageIcon.svg', // مسار الأيقونة
                          height: 24.h,
                          width: 24.w,
                        ),
                      ),
                      if (selectedIndex == 2)
                        Container(
                          height: 4.h, // زيادة سماكة المؤشر
                          width: 24.w, // عرض المؤشر
                          decoration: BoxDecoration(
                            color: AppColors.navBarActiveIconColor,
                            borderRadius:
                                BorderRadius.circular(4), // إضافة radius
                          ),
                        ),
                    ],
                  ),
                  // شارة الإشعار
                  if (2 > 0) // افترض أن عدد الرسائل هو 2
                    Container(
                      padding: EdgeInsets.all(2), // تقليل padding للشارة
                      constraints: BoxConstraints(
                        maxWidth: 16.w, // تقليل العرض الأقصى
                        maxHeight: 16.h, // تقليل الارتفاع الأقصى
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red, // لون الشارة
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '2', // عدد الرسائل
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.sp, // تقليل حجم النص
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 4.h), // خفض الأيقونة لأسفل
                  Icon(Icons.person),
                  if (selectedIndex == 3)
                    Container(
                      height: 4.h, // زيادة سماكة المؤشر
                      width: 24.w, // عرض المؤشر
                      decoration: BoxDecoration(
                        color: AppColors.navBarActiveIconColor,
                        borderRadius: BorderRadius.circular(4), // إضافة radius
                      ),
                    ),
                ],
              ),
              label: '',
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: AppColors.navBarActiveIconColor,
          unselectedItemColor: Colors.grey,
          onTap: onItemTapped,
        ),
      ],
    );
  }
}
