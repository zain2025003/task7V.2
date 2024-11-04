import 'package:flutter/material.dart';
import 'package:task6/core/services/media_query_service.dart';
import 'package:task6/widget/button.dart';
import 'package:task6/widget/custom_textfield.dart';

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
      // نجاح التحقق، يمكن إضافة تسجيل الدخول هنا
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Login Successful'),
          content: Text('You have successfully logged in'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('OK'),
            ),
          ],
        ),
      );
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
              color: Color(0xffFF8500),
              child: Center(
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
              child: Row(
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
              onPressed: () {}, // اضف تسجيل الدخول باستخدام فيسبوك
              color: Color(0xff0082CD),
              child: Row(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: Responsive.responsiveWidth * 60),
                    child: Icon(
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
            CustomButton(
              onPressed: () {}, // اضف تسجيل الدخول باستخدام جوجل
              color: const Color(0xffF6F7FA),
              child: Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                          left: Responsive.responsiveWidth * 60),
                      child:
                          Image(image: AssetImage('assets/icons/google.png'))),
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
                  top: Responsive.responsiveHeight * 100),
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
                    onPressed: () {},
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
