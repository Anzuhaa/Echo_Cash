// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:echo_cash/Widgets/my_circle_avatar.dart';
import 'package:echo_cash/controllers/dashboard_controller.dart';
import 'package:echo_cash/Pages/Menu/home_menu.dart';
import 'package:echo_cash/Pages/Menu/profile_menu.dart';
import 'package:echo_cash/Pages/Menu/scanner_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDashboardPage extends StatelessWidget {
  const MyDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DashboardController dashboardController = Get.find();

    final List<Widget> menus = [HomeMenu(), ScannerMenu(), ProfileMenu()];

    return Obx(
      () {
        return Scaffold(
          backgroundColor: Color(0xfff0f0f0),
          body: menus[dashboardController.selectedindex.value],
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Color(0xfff0f0f0),
            color: Color(0x906482AD),
            animationDuration: Duration(milliseconds: 400),
            onTap: dashboardController.changesMenu,
            items: [
              MyCircleAvatar(
                radius: 16,
                bgColor: Color(0x006482AD),
                icon: Icon(
                  Icons.home_rounded,
                  color: Color(0xfff0f0f0),
                  size: 32,
                ),
              ),
              MyCircleAvatar(
                radius: 16,
                bgColor: Color(0x006482AD),
                icon: Icon(
                  Icons.qr_code_scanner_rounded,
                  color: Color(0xfff0f0f0),
                  size: 32,
                ),
              ),
              CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage('assets/anzuha.jpg'),
              ),
            ],
          ),
        );
      },
    );
  }
}
