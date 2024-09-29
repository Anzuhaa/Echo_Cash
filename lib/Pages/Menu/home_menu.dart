// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:echo_cash/Pages/Component/main_header.dart';
import 'package:echo_cash/Pages/Component/main_content.dart';
import 'package:echo_cash/Pages/Component/main_menus.dart';
import 'package:echo_cash/Pages/Component/main_rowPhoto.dart';
import 'package:echo_cash/Widgets/my_text.dart';
import 'package:flutter/material.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

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
                    MainMenus(),
                    MyText(
                        text: "Hello Anzuhaa!",
                        fontsize: 24,
                        fontfamily: 'MontserratBold',
                        color: Color(0xfff0f0f0)),
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
