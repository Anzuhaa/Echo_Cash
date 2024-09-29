// ignore_for_file: prefer_const_constructors, use_super_parameters

import 'package:flutter/material.dart';

class MyPageButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color iconsColor;
  final IconData iconData;
  final Color textColor;
  final double height;
  final double borderRadius;

  const MyPageButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
    required this.textColor,
    this.height = 60,
    this.borderRadius = 4.0,
    required this.iconsColor,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Column(
          children: [
            Icon(
              iconData,
              color: iconsColor,
            ),
            Text(
              text,
              style: TextStyle(
                fontFamily: 'MontserratSemi',
                color: textColor,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
