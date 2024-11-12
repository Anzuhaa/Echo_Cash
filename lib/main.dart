// ignore_for_file: prefer_const_constructors

import 'package:echo_cash/Bindings/bindings.dart';
import 'package:echo_cash/Pages/mobileLayout/Menu/contacts_menu.dart';
import 'package:echo_cash/Pages/mobileLayout/Menu/bookmarks_menu.dart';
import 'package:echo_cash/Pages/mobileLayout/Menu/history_menu.dart';
import 'package:echo_cash/Pages/mobileLayout/Menu/home_menu.dart';
import 'package:echo_cash/Pages/mobileLayout/Menu/profile_menu.dart';
import 'package:echo_cash/Pages/mobileLayout/Menu/scanner_menu.dart';
import 'package:echo_cash/Pages/mobileLayout/Menu/transactionMenu/transaction_menu.dart';
import 'package:echo_cash/Pages/mobileLayout/dashboard.dart';
import 'package:echo_cash/Pages/mobileLayout/login_page.dart';
import 'package:echo_cash/Pages/mobileLayout/register_page.dart';
import 'package:echo_cash/Pages/responsive_layout.dart';
import 'package:echo_cash/controllers/responsive_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ResponsiveController responsiveController =
      Get.put(ResponsiveController());
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        responsiveController.updateScreenWidth(constraints.maxWidth);
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
            ),
            GetPage(
              name: '/RegisterPage',
              page: () => MyRegisterPage(),
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
            ),
            GetPage(
              name: '/ProfileMenu',
              page: () => ProfileMenu(),
            ),
            GetPage(
              name: '/HistoryMenu',
              page: () => HistoryMenu(),
            ),
            GetPage(
              name: '/ContactMenu',
              page: () => ContactsMenu(),
              binding: MyBindings(),
            ),
            GetPage(
              name: '/BookmarkMenu',
              page: () => BookmarkMenu(),
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
                usercodeText: 'Indomaret Top up Code',
                nominalText: 'Nominal Top up',
                buttonText: 'Top up',
                iconData: Icons.touch_app_rounded,
              ),
            ),
            GetPage(
              name: '/TransferMenu',
              page: () => TransactionMenu(
                titleText: "Transfer",
                boldText: "Username",
                semiText: "Valid",
                onPressed: () {},
                detailColor: Color(0x2014FF00),
                usercodeText: 'Username Transfer',
                nominalText: 'Nominal Transfer',
                buttonText: 'Transfer',
                iconData: Icons.compare_arrows_rounded,
              ),
            ),
            GetPage(
              name: '/CashOutMenu',
              page: () => TransactionMenu(
                titleText: "Cash Out",
                boldText: "Indomaret",
                semiText: "Cash Out",
                onPressed: () {},
                detailColor: Color(0x2014FF00),
                usercodeText: 'Indomaret Cash out Code',
                nominalText: 'Nominal Cash Out',
                buttonText: 'Cash Out',
                iconData: Icons.monetization_on_rounded,
              ),
            ),
          ],
        );
      },
    );
  }
}
