// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String hintText;
  final double fontsize;
  final bool isObsecure;
  final IconData? icons;
  final Color? colors;
  final TextEditingController controller;
  final VoidCallback onIconPressed;

  const MyTextfield({
    super.key,
    required this.hintText,
    required this.fontsize,
    required this.isObsecure,
    this.icons,
    required this.controller,
    required this.onIconPressed,
    this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        style: TextStyle(
          fontFamily: 'MontserratSemi',
          color: Color(0xff6482AD),
          fontSize: fontsize,
        ),
        obscureText: isObsecure,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(16),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff6482AD)),
              borderRadius: BorderRadius.circular(16)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff6482AD)),
              borderRadius: BorderRadius.circular(16)),
          filled: true,
          fillColor: Color(0x90F0F0F0),
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: 'MontserratSemi',
            color: Color(0xff6482AD),
            fontSize: fontsize,
          ),
          suffixIcon: GestureDetector(
            onTap: onIconPressed,
            child: Icon(
              icons,
              color: colors,
            ),
          ),
        ),
        controller: controller,
      ),
    );
  }
}
