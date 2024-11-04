import 'package:flutter/material.dart';
import 'package:task7_v2/core/classes/constants/services/media_query_services.dart';
import 'package:task7_v2/view/screens/chat_page/chat_page.dart';
import 'package:task7_v2/view/screens/rejister_screen/rejister_screen.dart';
import 'package:task7_v2/widgets/login_screen_custom_widgets/custom_button.dart';
import 'package:task7_v2/widgets/login_screen_custom_widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  void _validateInputs() {
    // تعريف نمط البريد الإلكتروني للتحقق من صحته
    final emailPattern = RegExp(r'^[^@]+@[^@]+\.[^@]+');

    if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
      // التحقق من أن جميع الحقول غير فارغة
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('Please fill in all fields'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('OK'),
            ),
          ],
        ),
      );
    } else if (!emailPattern.hasMatch(_emailController.text)) {
      // التحقق من أن البريد الإلكتروني بصيغة صحيحة
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Invalid Email'),
          content: Text('Please enter a valid email address'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('OK'),
            ),
          ],
        ),
      );
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => ChatsPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: Responsive.responsiveHeight * 70),
              child: Image.asset(
                "assets/images/Group 82.png",
                width: Responsive.responsiveWidth * 51,
                height: Responsive.responsiveHeight * 62,
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: Responsive.responsiveHeight * 28),
              child: CustomTextfield(
                controller: _emailController,
                hinttext: 'Email',
                obscuretext: false,
                suffixicon: null,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: Responsive.responsiveHeight * 10),
              child: CustomTextfield(
                controller: _passwordController,
                hinttext: 'Password',
                obscuretext: !_isPasswordVisible,
                suffixicon: IconButton(
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Color.fromRGBO(157, 159, 160, 1),
                  ),
                  onPressed: _togglePasswordVisibility,
                ),
              ),
            ),
            SizedBox(
              height: Responsive.responsiveHeight * 20,
            ),
            CustomButton(
              onPressed: _validateInputs,
              color: const Color(0xffFF8500),
              child: const Center(
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot Password?',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 14.44,
                  color: Color(0xff0082CD),
                ),
              ),
            ),
            SizedBox(
              height: Responsive.responsiveHeight * 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Responsive.responsiveWidth * 20),
              child: const Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      thickness: 0.9,
                      color: Color(0xffC7C9D9),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "or",
                      style: TextStyle(
                        color: Color(0xff8C8C8C),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 14.44,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.9,
                      color: Color(0xffC7C9D9),
                    ),
                  ),
                ],
              ),
            ),
            CustomButton(
              onPressed: () {},
              color: const Color(0xff0082CD),
              child: Row(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: Responsive.responsiveWidth * 60),
                    child: const Icon(
                      Icons.facebook,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          left: Responsive.responsiveWidth * 14),
                      child: const Text(
                        'Log in with Facebook',
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: Responsive.responsiveHeight * 20,
            ),
            CustomButton(
              onPressed: () {},
              color: const Color(0xffF6F7FA),
              child: Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                          left: Responsive.responsiveWidth * 60),
                      child: const Image(
                          image: AssetImage('assets/images/google.png'))),
                  Padding(
                      padding: EdgeInsets.only(
                          left: Responsive.responsiveWidth * 14),
                      child: const Text(
                        'Log in with Google',
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Responsive.responsiveWidth * 54,
                  top: Responsive.responsiveHeight * 80),
              child: Row(
                children: [
                  const Text(
                    'Don’t have an account?',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 14.44,
                      color: Color(0xff9D9FA0),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateAccountPage()));
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 14.44,
                        color: Color(0xff0082CD),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
