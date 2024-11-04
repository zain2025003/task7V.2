import 'package:flutter/material.dart';
import 'package:flutter_application_task2/core/constants/media_query_utils.dart';

import 'package:flutter_application_task2/view/nav_bar/nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    MediaQueryUtils.init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Halah Ahmad Task7',
      theme: ThemeData(
        fontFamily: 'Poppins-Regular',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: NavBar(),
    );
  }
}
