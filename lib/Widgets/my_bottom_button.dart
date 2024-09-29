// ignore_for_file: prefer_const_constructors

import 'package:echo_cash/Widgets/my_text.dart';
import 'package:echo_cash/Widgets/my_text_span.dart';
import 'package:echo_cash/Widgets/my_textbutton.dart';
import 'package:flutter/material.dart';

class MyBottomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MyBottomButton(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFF0F0F0),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                  child: MyTextSpan(
                      text1:
                          "By logging in or registering, you agree to Echo's ",
                      text2: "Terms of Service ",
                      text3: "and ",
                      text4: "Privacy Policy",
                      fontsize: 12,
                      fontfamily: 'MontserratSemi',
                      colorPrimary: Color(0xff000000),
                      colorSpan: Color(0xff6482AD),
                      textAlign: TextAlign.start),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: MyTextbutton(
                    text: text,
                    onPressed: onPressed,
                    backgroundColor: Color(0xff7FA1C3),
                    textColor: Color(0xfff0f0f0),
                    borderRadius: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
