// ignore_for_file: prefer_const_constructors

import 'package:camera/camera.dart';
import 'package:echo_cash/Bindings/bindings.dart';
import 'package:echo_cash/Pages/Menu/history_menu.dart';
import 'package:echo_cash/Pages/Menu/home_menu.dart';
import 'package:echo_cash/Pages/Menu/notifications_menu.dart';
import 'package:echo_cash/Pages/Menu/profile_menu.dart';
import 'package:echo_cash/Pages/Menu/scanner_menu.dart';
import 'package:echo_cash/Pages/Menu/transaction_menu.dart';
import 'package:echo_cash/Pages/dashboard.dart';
import 'package:echo_cash/Pages/login_page.dart';
import 'package:echo_cash/Pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF6482AD),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0x756482AD),
          secondary: Color(0xff7FA1C3),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF6482AD),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => MyLoginPage(),
          binding: MyBindings(),
        ),
        GetPage(
          name: '/RegisterPage',
          page: () => MyRegisterPage(),
          binding: MyBindings(),
        ),
        GetPage(
          name: '/DashboardPage',
          page: () => MyDashboardPage(),
          binding: MyBindings(),
        ),
        GetPage(
          name: '/HomeMenu',
          page: () => HomeMenu(),
          binding: MyBindings(),
        ),
        GetPage(
          name: '/ScannerMenu',
          page: () => ScannerMenu(),
          binding: MyBindings(),
        ),
        GetPage(
          name: '/ProfileMenu',
          page: () => ProfileMenu(),
          binding: MyBindings(),
        ),
        GetPage(
          name: '/HistoryMenu',
          page: () => HistoryMenu(),
          binding: MyBindings(),
        ),
        GetPage(
          name: '/NotificationsMenu',
          page: () => NotificationMenu(),
          binding: MyBindings(),
        ),
        GetPage(
          name: '/TopUpMenu',
          page: () => TransactionMenu(
            titleText: "Top up",
            boldText: "Indomaret",
            semiText: "Top up",
            onPressed: () {},
            detailColor: Color(0x2014FF00),
            nominalText: 'Nominal Top up',
            buttonText: 'Top up',
            iconData: Icons.touch_app_rounded,
          ),
          binding: MyBindings(),
        ),
        GetPage(
          name: '/TransferMenu',
          page: () => TransactionMenu(
            titleText: "Transfer",
            boldText: "Username",
            semiText: "Valid",
            onPressed: () {},
            detailColor: Color(0x2014FF00),
            nominalText: 'Nominal Transfer',
            buttonText: 'Transfer',
            iconData: Icons.compare_arrows_rounded,
          ),
          binding: MyBindings(),
        ),
        GetPage(
          name: '/CashOutMenu',
          page: () => TransactionMenu(
            titleText: "Cash Out",
            boldText: "Indomaret",
            semiText: "Cash Out",
            onPressed: () {},
            detailColor: Color(0x2014FF00),
            nominalText: 'Nominal Cash Out',
            buttonText: 'Cash Out',
            iconData: Icons.monetization_on_rounded,
          ),
          binding: MyBindings(),
        ),
      ],
    );
  }
}
