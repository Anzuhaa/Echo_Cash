// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:echo_cash/Model/model_card.dart';
import 'package:echo_cash/Widgets/my_textbutton.dart';
import 'package:flutter/material.dart';

class AdapterListButton extends StatelessWidget {
  final ModelMenuButton modelMenuButton;

  const AdapterListButton({super.key, required this.modelMenuButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      child: MyTextbutton(
        text: modelMenuButton.MenuButtonText,
        onPressed: modelMenuButton.MenuButtononPressed,
        backgroundColor: modelMenuButton.MenuButtonColor,
        textColor: Color(0xff0f0f0f),
      ),
    );
  }
}
