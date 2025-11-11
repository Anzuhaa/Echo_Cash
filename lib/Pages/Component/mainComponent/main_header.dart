// ignore_for_file: prefer_const_constructors

import 'package:echo_cash/Widgets/mobileWidgets/my_balance.dart';
import 'package:echo_cash/Widgets/mobileWidgets/my_circle_avatar.dart';
import 'package:echo_cash/Widgets/mobileWidgets/my_logo.dart';
import 'package:echo_cash/Widgets/mobileWidgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 0, top: 64, left: 32, right: 32),
      child: Column(
        children: [
          Row(
            children: [
              MyCircleAvatar(
                  assetImage: AssetImage('assets/anzuha.jpg'),
                  onPressed: () {
                    Get.toNamed("/ProfileMenu");
                  },
                  radius: 24),
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
