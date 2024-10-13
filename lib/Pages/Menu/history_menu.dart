// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:echo_cash/Pages/Component/menu_header.dart';
import 'package:echo_cash/Pages/Component/menu_history_content.dart';
import 'package:echo_cash/Widgets/my_text.dart';
import 'package:flutter/material.dart';

class HistoryMenu extends StatelessWidget {
  HistoryMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6482AD),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              MenuHeader(
                iconData: Icons.rotate_left_rounded,
                text: "History",
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 60,
                color: Color(0xff7FA1C3),
                alignment: Alignment.centerLeft,
                child: MyText(
                  text: "History Data",
                  fontsize: 24,
                  fontfamily: "MontserratSemi",
                  color: Color(0xfff0f0f0),
                ),
              ),
              MenuHistoryContent()
            ],
          ),
        ),
      ),
    );
  }
}
