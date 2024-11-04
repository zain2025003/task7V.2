import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task7_v2/view/screens/login_screen/login_screen.dart';
import 'package:task7_v2/core/classes/constants/services/media_query_services.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void Navigation(BuildContext context) async {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      await preferences.setBool('isOnboardingCompleted', true);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: Responsive.responsiveWidth * 82.04,
              top: Responsive.responsiveHeight * 159.6,
            ),
            child: SvgPicture.asset('assets/icons/focalXLogo.svg'),
          ),
          Padding(
            padding: EdgeInsets.only(left: Responsive.responsiveWidth * 80),
            child: Text(
              'community',
              style: TextStyle(
                fontSize: Responsive.responsiveWidth * 27.09,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w300,
                letterSpacing: 4,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                top: Responsive.responsiveHeight * 130,
              ),
              child: Text(
                'Welcome to Our Community',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Responsive.responsiveWidth * 18,
                  color: const Color(0XFF303030),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: Responsive.responsiveHeight * 3),
            child: Center(
              child: Text(
                'Best and popular apps for live education ',
                style: TextStyle(
                  color: const Color(0xff8C8C8C),
                  fontSize: Responsive.responsiveWidth * 14,
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              'course from home',
              style: TextStyle(
                color: const Color(0xff8C8C8C),
                fontSize: Responsive.responsiveWidth * 14,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: Responsive.responsiveHeight * 55,
              left: Responsive.responsiveWidth * 16,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(
                  Responsive.responsiveWidth * 309,
                  Responsive.responsiveHeight * 51,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                backgroundColor: Colors.orange,
              ),
              onPressed: () => Navigation(context), // استدعاء الدالة بشكل صحيح
              child: Text(
                'Get started',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Responsive.responsiveWidth * 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
