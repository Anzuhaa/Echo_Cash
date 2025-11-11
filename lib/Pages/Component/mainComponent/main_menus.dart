// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:echo_cash/Widgets/mobileWidgets/my_circle_avatar.dart';
import 'package:echo_cash/Widgets/mobileWidgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainMenus extends StatelessWidget {
  const MainMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed("/TopUpMenu");
                  },
                  child: MyCircleAvatar(
                    radius: 32,
                    bgColor: Color(0xfff0f0f0),
                    icon: Icon(
                      Icons.touch_app_rounded,
                      color: Color(0xff6482AD),
                      size: 32,
                    ),
                  ),
                ),
                MyText(
                  textAlign: TextAlign.center,
                  text: "Top Up",
                  fontsize: 16,
                  fontfamily: "MontserratSemi",
                  color: Color(0xfff0f0f0),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed("/TransferMenu");
                  },
                  child: MyCircleAvatar(
                    radius: 32,
                    bgColor: Color(0xfff0f0f0),
                    icon: Icon(
                      Icons.compare_arrows_rounded,
                      color: Color(0xff6482AD),
                      size: 32,
                    ),
                  ),
                ),
                MyText(
                  textAlign: TextAlign.center,
                  text: "Transfer",
                  fontsize: 16,
                  fontfamily: "MontserratSemi",
                  color: Color(0xfff0f0f0),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed("/CashOutMenu");
                  },
                  child: MyCircleAvatar(
                    radius: 32,
                    bgColor: Color(0xfff0f0f0),
                    icon: Icon(
                      Icons.monetization_on,
                      color: Color(0xff6482AD),
                      size: 32,
                    ),
                  ),
                ),
                MyText(
                  textAlign: TextAlign.center,
                  text: "Cash Out",
                  fontsize: 16,
                  fontfamily: "MontserratSemi",
                  color: Color(0xfff0f0f0),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed("/HistoryMenu");
                  },
                  child: MyCircleAvatar(
                    radius: 32,
                    bgColor: Color(0xfff0f0f0),
                    icon: Icon(
                      Icons.rotate_left_rounded,
                      color: Color(0xff6482AD),
                      size: 32,
                    ),
                  ),
                ),
                MyText(
                  textAlign: TextAlign.center,
                  text: "History",
                  fontsize: 16,
                  fontfamily: "MontserratSemi",
                  color: Color(0xfff0f0f0),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
