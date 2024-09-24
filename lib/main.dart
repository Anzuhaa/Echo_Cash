// ignore_for_file: prefer_const_constructors

import 'package:echo_cash/Bindings/bindings.dart';
import 'package:echo_cash/Pages/dashboard.dart';
import 'package:echo_cash/Pages/login_page.dart';
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
          name: '/Dashboard',
          page: () => MyDashboardPage(),
          binding: MyBindings(),
        ),
      ],
    );
  }
}
