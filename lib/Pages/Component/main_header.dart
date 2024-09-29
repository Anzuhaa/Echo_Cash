// ignore_for_file: prefer_const_constructors

import 'package:echo_cash/Widgets/my_circle_avatar.dart';
import 'package:echo_cash/Widgets/my_logo.dart';
import 'package:echo_cash/Widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 4, top: 64, left: 32, right: 32),
      child: Column(
        children: [
          Row(
            children: [
              MyCircleAvatar(
                  assetImage: AssetImage('assets/anzuha.jpg'),
                  onPressed: () {},
                  radius: 24),
              SizedBox(width: 8),
              GestureDetector(
                onTap: () {
                  Get.toNamed("/NotificationsMenu");
                },
                child: Icon(
                  Icons.notifications,
                  size: 40,
                  color: Color(0xfff0f0f0),
                ),
              ),
              Expanded(
                  child: MyLogo(
                      logoSize: 40, mainAxisAlignment: MainAxisAlignment.end))
            ],
          ),
          MyText(
            text: "Rp 1.000.000",
            fontsize: 32,
            fontfamily: 'MontserratSemi',
            color: Color(0xfff0f0f0),
          ),
          MyText(
            text: "Available Balance",
            fontsize: 16,
            fontfamily: 'MontserratSemi',
            color: Color(0xfff0f0f0),
          ),
        ],
      ),
    );
  }
}
