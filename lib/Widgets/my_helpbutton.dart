// ignore_for_file: prefer_const_constructors, use_super_parameters

import 'package:flutter/material.dart';

class MyHelpbutton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MyHelpbutton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      alignment: Alignment.topLeft,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: Color(0xff6482AD),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'MontserratSemi',
            color: Color(0x90F0F0F0),
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
