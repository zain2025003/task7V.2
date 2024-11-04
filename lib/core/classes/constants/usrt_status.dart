import 'package:flutter/material.dart';

import 'package:task7_v2/core/classes/constants/shared.dart';
import 'package:task7_v2/view/screens/chat_page/chat_page.dart';
import 'package:task7_v2/view/screens/login_screen/login_screen.dart';
import 'package:task7_v2/view/screens/onboarding_screen/onboarding_screen.dart';

class UserStateNavigator extends StatefulWidget {
  const UserStateNavigator({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UserStateNavigatorState createState() => _UserStateNavigatorState();
}

class _UserStateNavigatorState extends State<UserStateNavigator> {
  @override
  void initState() {
    super.initState();
    _determineNextScreen();
  }

  Future<void> _determineNextScreen() async {
    bool isOnboardingCompleted = await Shared.isOnboardingCompleted();
    bool isLoggedIn = await Shared.isLogin();
    bool isLogOut = await Shared.isLogOut();
    bool isRegister = await Shared.isRegister();

    if (isOnboardingCompleted && isLoggedIn || isRegister) {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => ChatsPage()),
      );
    } else if (isOnboardingCompleted) {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    } else {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
