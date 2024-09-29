// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:echo_cash/Widgets/my_circle_avatar.dart';
import 'package:echo_cash/Widgets/my_logo.dart';
import 'package:echo_cash/Widgets/my_text.dart';
import 'package:flutter/material.dart';

class MenuHeader extends StatelessWidget {
  final String text;
  final IconData iconData;

  MenuHeader({super.key, required this.text, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 48, right: 16, left: 16, bottom: 16),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              MyCircleAvatar(
                radius: 16,
                bgColor: Color(0xfff0f0f0),
                icon: Icon(
                  iconData,
                  color: Color(0xff6482AD),
                  size: 24,
                ),
              ),
              SizedBox(width: 8),
              MyText(
                text: text,
                fontsize: 24,
                fontfamily: "MontserratSemi",
                color: Color(0xfff0f0f0),
              ),
              Expanded(
                  child: MyLogo(
                      logoSize: 40, mainAxisAlignment: MainAxisAlignment.end))
            ],
          ),
        ],
      ),
    );
  }
}
