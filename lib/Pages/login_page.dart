// ignore_for_file: prefer_const_constructors

import 'package:echo_cash/Widgets/my_bottom_button.dart';
import 'package:echo_cash/Widgets/my_helpbutton.dart';
import 'package:echo_cash/Widgets/my_logo.dart';
import 'package:echo_cash/Widgets/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  bool _obscurePassword = true;
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  void _toggleUsernameClear() {
    setState(() {
      username.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6482AD),
      appBar: AppBar(
        backgroundColor: Color(0xff6482AD),
      ),
      body: Flexible(
        child: Column(
          children: [
            MyLogo(
              logoSize: 72,
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            SizedBox(height: 64),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: MyTextfield(
                readMode: false,
                hintText: 'Username',
                fontsize: 20,
                textColor: Color(0xfff0f0f0),
                isObsecure: false,
                controller: username,
                onIconPressed: _toggleUsernameClear,
                icons: Icons.clear_rounded,
                colors: Color(0x906482AD),
                bgColor: Color(0x90F0F0F0),
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: MyTextfield(
                readMode: false,
                hintText: 'Password',
                fontsize: 20,
                textColor: Color(0xfff0f0f0),
                isObsecure: _obscurePassword,
                controller: password,
                onIconPressed: _togglePasswordVisibility,
                icons:
                    _obscurePassword ? Icons.visibility : Icons.visibility_off,
                colors: Color(0x906482AD),
                bgColor: Color(0x90F0F0F0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 32),
              child: MyHelpbutton(
                text: "Forgot your password?",
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 32),
              child: MyHelpbutton(
                text: 'Register account?',
                onPressed: () {
                  Get.offAndToNamed('/RegisterPage');
                },
              ),
            ),
            Spacer(),
            MyBottomButton(
              text: "Log In",
              onPressed: () {
                Get.toNamed('/DashboardPage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
