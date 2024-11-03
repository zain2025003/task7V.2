import 'package:flutter/material.dart';
import 'package:flutter_application_task2/view/conversation_screen/chats_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Halah Ahmad Task7',
      theme: ThemeData(
        fontFamily: 'Poppins-Regular',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: ChatsPage(),
    );
  }
}
