import 'package:flutter/material.dart';
import 'package:task7_v2/view/screens/detailes_screen/detailes_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailesScreen()));
            },
            child: Text('DetailesScreen')),
      ),
    );
  }
}
