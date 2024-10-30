import 'dart:collection';
import 'package:flutter/src/services/asset_bundle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/image.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo section (Placeholder or image widget)
            Spacer(),
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/Group 83.png',
                    //'assets/focalxlogo.svg',
                    height: 100,
                  ),
                  SizedBox(height: 10),
//********************************************************************************//
                /*
                  Text(
                    'community',
                    style: TextStyle(

                     fontSize: 27.09 ,
                      color: Colors.black,


                    ),
                  ),*/
                  //*****************************************************************//
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildStyledLetter('c', Colors.black, 30),
                      _buildStyledLetter('o', Colors.black, 30),
                      _buildStyledLetter('m', Colors.black, 30),
                      _buildStyledLetter('m', Colors.black, 30),
                      _buildStyledLetter('u', Colors.black, 30),
                      _buildStyledLetter('n', Colors.black, 30),
                      _buildStyledLetter('i', Colors.black, 30),
                      _buildStyledLetter('t', Colors.black, 30),
                      _buildStyledLetter('y', Colors.black, 30), // Highlighted 'y'
                    ],
                  ),
                ],
              ),
            ),

            Spacer(),
            // Welcome Text Section
            Text(
              'Welcome to Our Community',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Best and popular apps for live education course from home',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: Colors.grey[600],
                ),
              ),
            ),
            SizedBox(height: 60,),

            // Button Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                width: 400,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrangeAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  child:
                  Text(
                    'Get started',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 170), // Add some space at the bottom
          ],
        ),
      ),
    );
  }
}
Widget _buildStyledLetter(String letter, Color color, double fontSize) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4.0), // Adjust spacing between letters
    child: Text(
      letter,
      style: TextStyle(
        fontSize: fontSize,

        color: Colors.black87,
      ),
    ),
  );
}