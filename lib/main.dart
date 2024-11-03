import 'package:flutter/material.dart';
import 'package:qousy/core/classes/constant/services/media_query_services.dart';
import 'package:qousy/view/onboarding_screen/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive.responsive(context);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
