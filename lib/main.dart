import 'package:flutter/material.dart';
import 'package:rejister/core/classes/constants/services/media_query_services.dart';
import 'package:rejister/view/screens/create_account_screen/create_account_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive.responsive(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: CreateAccountPage());
  }
}
