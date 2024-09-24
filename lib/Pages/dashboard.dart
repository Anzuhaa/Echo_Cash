// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:echo_cash/Controller/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDashboardPage extends StatelessWidget {
  const MyDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DashboardController dashboardController = Get.find();

    final List<Widget> menus = [];

    return Obx(
      () {
        return Scaffold(
          body: menus[dashboardController.selectedindex.value],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: dashboardController.selectedindex.value,
            onTap: dashboardController.changesMenu,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_rounded), label: "Home"),
            ],
          ),
        );
      },
    );
  }
}
