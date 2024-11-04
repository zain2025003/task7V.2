import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rejister/core/classes/constants/services/media_query_services.dart';
import 'package:rejister/widgets/create_account_button.dart';

class CreateAccountPage extends StatefulWidget {
  CreateAccountPage({super.key});

  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  // تعريف Controllers لكل حقل إدخال
  final TextEditingController fullnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // متغير لإدارة رؤية كلمة المرور
  bool _obscurePassword = true;

  // دالة للتحقق من المدخلات
  void _checkInputs(BuildContext context) {
    if (fullnameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty) {
      // عرض رسالة إذا كانت الحقول فارغة
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please fill in all fields")),
      );
    } else {
      // هنا يمكنك إضافة منطق إنشاء الحساب
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Account created successfully!")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: Responsive.responsiveHeight * 100,
                left: Responsive.responsiveWidth * 150,
              ),
              child: SvgPicture.asset(
                'assets/images/createAccountFocalXLogo.svg',
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: Responsive.responsiveHeight * 26,
                    left: Responsive.responsiveWidth * 14,
                    right: Responsive.responsiveWidth * 14,
                  ),
                  child: TextFormField(
                    controller: fullnameController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffF6F7FA)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      filled: true,
                      fillColor: const Color(0xffF6F7FA),
                      contentPadding: EdgeInsets.only(
                        left: Responsive.responsiveHeight * 26,
                      ),
                      hintText: 'Fullname',
                      hintStyle: TextStyle(
                        color: Color(0xff9D9FA0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: Responsive.responsiveHeight * 12,
                    left: Responsive.responsiveWidth * 14,
                    right: Responsive.responsiveWidth * 14,
                  ),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffF6F7FA)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      filled: true,
                      fillColor: const Color(0xffF6F7FA),
                      contentPadding: EdgeInsets.only(
                        left: Responsive.responsiveHeight * 26,
                      ),
                      hintText: 'Email',
                      hintStyle: const TextStyle(
                        color: Color(0xff9D9FA0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: Responsive.responsiveHeight * 12,
                    left: Responsive.responsiveWidth * 14,
                    right: Responsive.responsiveWidth * 14,
                  ),
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffF6F7FA)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      filled: true,
                      fillColor: const Color(0xffF6F7FA),
                      contentPadding: EdgeInsets.only(
                        left: Responsive.responsiveHeight * 26,
                      ),
                      hintText: 'Password',
                      hintStyle: const TextStyle(
                        color: Color(0xff9D9FA0),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Color(0xff9D9FA0),
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                CreateAccountButton(
                  topPadding: Responsive.responsiveHeight * 20,
                  leftPadding: Responsive.responsiveWidth * 14,
                  rightPadding: Responsive.responsiveWidth * 14,
                  color: Colors.orange,
                  onPressed: () => _checkInputs(context),
                  child: const Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: Responsive.responsiveHeight * 30,
                    left: Responsive.responsiveWidth * 14,
                    right: Responsive.responsiveWidth * 14,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Responsive.responsiveWidth * 8),
                        child: Text(
                          'or',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                CreateAccountButton(
                  topPadding: Responsive.responsiveHeight * 12,
                  leftPadding: Responsive.responsiveWidth * 14,
                  rightPadding: Responsive.responsiveWidth * 14,
                  color: Colors.blue,
                  onPressed: () => _checkInputs(context),
                  child: Center(
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: Responsive.responsiveWidth * 66),
                          child: const Icon(
                            Icons.facebook,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: Responsive.responsiveWidth * 12),
                          child: const Text(
                            'Log in with Facebook',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CreateAccountButton(
                  onPressed: () => _checkInputs(context),
                  topPadding: Responsive.responsiveHeight * 12,
                  leftPadding: Responsive.responsiveWidth * 14,
                  rightPadding: Responsive.responsiveWidth * 14,
                  color: const Color(0xffF6F7FA),
                  child: Center(
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: Responsive.responsiveWidth * 66),
                          child: Image.asset(
                              'assets/images/createAccountGoogleIcon.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: Responsive.responsiveWidth * 12),
                          child: const Text(
                            'Log in with Google',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: Responsive.responsiveHeight * 10,
                        left: Responsive.responsiveWidth * 20,
                      ),
                      child: const Row(
                        children: [
                          Text('By signing up you accept the '),
                          Text(
                            ' Terms of Service',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(' and '),
                        Text(
                          ' Privacy Policy',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: Responsive.responsiveHeight * 30,
                        left: Responsive.responsiveWidth * 30,
                      ),
                      child: const Text('Already have an account?'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: Responsive.responsiveHeight * 28,
                        ),
                        child: const Text(
                          ' Log in',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
