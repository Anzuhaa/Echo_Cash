// ignore_for_file: prefer_const_constructors

import 'package:echo_cash/Component/adapter_list_button.dart';
import 'package:echo_cash/Model/model_card.dart';
import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    List<ModelMenuButton> buttonData = [
      ModelMenuButton("1", () {}, Color(0xfff0f0f0), null, Color(0xff0f0f0f)),
      ModelMenuButton("2", () {}, Color(0xfff0f0f0), null, Color(0xff0f0f0f)),
      ModelMenuButton("3", () {}, Color(0xfff0f0f0), null, Color(0xff0f0f0f)),
      ModelMenuButton("4", () {}, Color(0xfff0f0f0), null, Color(0xff0f0f0f)),
      ModelMenuButton("5", () {}, Color(0xfff0f0f0), null, Color(0xff0f0f0f)),
      ModelMenuButton("6", () {}, Color(0xfff0f0f0), null, Color(0xff0f0f0f)),
      ModelMenuButton("7", () {}, Color(0xfff0f0f0), null, Color(0xff0f0f0f)),
      ModelMenuButton("8", () {}, Color(0xfff0f0f0), null, Color(0xff0f0f0f)),
      ModelMenuButton("9", () {}, Color(0xfff0f0f0), null, Color(0xff0f0f0f)),
      ModelMenuButton("0", () {}, Color(0xfff0f0f0), null, Color(0xff0f0f0f)),
      ModelMenuButton("00", () {}, Color(0xfff0f0f0), null, Color(0xff0f0f0f)),
      ModelMenuButton("", () {}, Color(0xfff0f0f0), Icons.backspace_rounded,
          Color(0xff0f0f0f)),
    ];

    return Container(
      padding: EdgeInsets.all(16),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1.5 / 1,
        ),
        itemCount: buttonData.length,
        itemBuilder: (context, index) {
          return AdapterListButton(modelMenuButton: buttonData[index]);
        },
      ),
    );
  }
}
