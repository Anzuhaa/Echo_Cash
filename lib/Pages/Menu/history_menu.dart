// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors_in_immutables

import 'package:echo_cash/Pages/Component/menuComponent/menu_header.dart';
import 'package:echo_cash/Pages/Component/menuComponent/menu_history_content.dart';
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
              MenuHistoryContent()
            ],
          ),
        ),
      ),
    );
  }
}
