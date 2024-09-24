// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:echo_cash/Widgets/my_helpbutton.dart';
import 'package:echo_cash/Widgets/my_logo.dart';
import 'package:echo_cash/Widgets/my_textfield.dart';
import 'package:flutter/material.dart';

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
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        child: Column(
          children: [
            MyLogo(
              logoSize: 72,
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            SizedBox(height: 64),
            MyTextfield(
              hintText: 'Username',
              fontsize: 20,
              isObsecure: false,
              controller: username,
              onIconPressed: _toggleUsernameClear,
              icons: Icons.clear_rounded,
              colors: Color(0x906482AD),
            ),
            SizedBox(height: 24),
            MyTextfield(
              hintText: 'Password',
              fontsize: 20,
              isObsecure: _obscurePassword,
              controller: password,
              onIconPressed: _togglePasswordVisibility,
              icons: _obscurePassword ? Icons.visibility : Icons.visibility_off,
              colors: Color(0x906482AD),
            ),
            MyHelpbutton(text: "Forgot your password?", onPressed: () {}),
            Spacer(),
            
          ],
        ),
      ),
    );
  }
}
