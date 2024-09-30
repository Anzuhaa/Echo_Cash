// ignore_for_file: prefer_const_constructors

import 'package:echo_cash/Widgets/my_bottom_button.dart';
import 'package:echo_cash/Widgets/my_helpbutton.dart';
import 'package:echo_cash/Widgets/my_logo.dart';
import 'package:echo_cash/Widgets/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyRegisterPage extends StatefulWidget {
  const MyRegisterPage({super.key});

  @override
  State<MyRegisterPage> createState() => _MyRegisterPageState();
}

class _MyRegisterPageState extends State<MyRegisterPage> {
  bool _obscurePassword = true;
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController date = TextEditingController();
  final TextEditingController month = TextEditingController();
  final TextEditingController year = TextEditingController();

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
          iconTheme: IconThemeData(
            color: Color(0xfff0f0f0),
          )),
      body: Flexible(
        child: Column(
          children: [
            MyLogo(
              logoSize: 72,
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            SizedBox(height: 56),
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
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: MyTextfield(
                      readMode: false,
                      hintText: 'Date',
                      fontsize: 16,
                      isObsecure: false,
                      controller: date,
                      onIconPressed: () {},
                      textColor: Color(0xfff0f0f0),
                      bgColor: Color(0x90F0F0F0),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: MyTextfield(
                      readMode: false,
                      hintText: 'Month',
                      fontsize: 16,
                      isObsecure: false,
                      controller: date,
                      onIconPressed: () {},
                      textColor: Color(0xfff0f0f0),
                      bgColor: Color(0x90F0F0F0),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: MyTextfield(
                      readMode: false,
                      hintText: 'Year',
                      fontsize: 16,
                      isObsecure: false,
                      controller: date,
                      onIconPressed: () {},
                      textColor: Color(0xfff0f0f0),
                      bgColor: Color(0x90F0F0F0),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 32),
              child: MyHelpbutton(
                text: 'Log in to account?',
                onPressed: () {
                  Get.offAndToNamed('/');
                },
              ),
            ),
            Spacer(),
            MyBottomButton(
              text: "Register",
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
