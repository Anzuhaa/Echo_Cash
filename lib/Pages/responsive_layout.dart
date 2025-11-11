// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:echo_cash/Pages/Menu/profile_menu.dart';
import 'package:echo_cash/Pages/profile_menu_tablet.dart';
import 'package:echo_cash/controllers/responsive_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResponsiveProfilLayout extends StatelessWidget {
  final ResponsiveController responsiveController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (responsiveController.isMobile()) {
        return ProfileMenu();
      } else {
        return ProfileMenuTablet();
      }
    });
  }
}
