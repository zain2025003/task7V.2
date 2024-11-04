import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task7_v2/core/classes/constants/services/media_query_services.dart';
import 'package:task7_v2/core/classes/constants/usrt_status.dart';
import 'package:task7_v2/view/screens/onboarding_screen/onboarding_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Responsive.responsive(context);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: UserStateNavigator(),
    );
  }
}
