// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:echo_cash/Pages/mobileLayout/Component/mainComponent/main_header.dart';
import 'package:echo_cash/Pages/mobileLayout/Component/mainComponent/main_content.dart';
import 'package:echo_cash/Pages/mobileLayout/Component/mainComponent/main_menus.dart';
import 'package:echo_cash/Pages/mobileLayout/Component/mainComponent/main_rowPhoto.dart';
import 'package:echo_cash/logic/balance.dart';
import 'package:echo_cash/controllers/transaction_controller.dart';
import 'package:echo_cash/Widgets/mobileWidgets/my_balance.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({super.key});

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  bool _isVisible = false;
  final TransactionController paymentController = Get.find();

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                color: Color(0xff6482AD),
                child: Column(
                  children: [
                    MainHeader(),
                    GestureDetector(
                      child: Container(
                        height: 80,
                        width: 480,
                        child: Obx(
                          () => MyBalance(
                            isVisible: _isVisible,
                            balance: formatToCurrency(
                                paymentController.balance.value),
                          ),
                        ),
                      ),
                      onTap: () {
                        _toggleVisibility();
                      },
                    ),
                    MainMenus(),
                    MainImageRow(),
                  ],
                ),
              ),
              MainContent(),
            ],
          ),
        ),
      ),
    );
  }
}
