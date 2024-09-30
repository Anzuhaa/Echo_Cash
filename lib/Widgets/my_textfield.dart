// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String hintText;
  final double fontsize;
  final bool isObsecure;
  final IconData? icons;
  final Color? colors;
  final bool readMode;
  final Color bgColor;
  final Color? textColor;
  final TextEditingController? controller;
  final VoidCallback onIconPressed;

  const MyTextfield({
    super.key,
    required this.hintText,
    required this.fontsize,
    required this.isObsecure,
    this.icons,
    required this.controller,
    required this.onIconPressed,
    required this.textColor,
    this.colors,
    required this.bgColor,
    required this.readMode,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        readOnly: readMode,
        style: TextStyle(
          fontFamily: 'MontserratSemi',
          color: textColor,
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
          fillColor: bgColor,
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: 'MontserratSemi',
            color: textColor,
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
