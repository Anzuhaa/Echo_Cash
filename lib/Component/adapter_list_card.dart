// ignore_for_file: prefer_const_constructors

import 'package:echo_cash/Model/model_card.dart';
import 'package:echo_cash/Widgets/my_pagebutton.dart';
import 'package:echo_cash/Widgets/my_text.dart';
import 'package:echo_cash/Widgets/my_textbutton.dart';
import 'package:flutter/material.dart';

class AdapterCard extends StatelessWidget {
  final ModelCard modelCard;

  const AdapterCard({super.key, required this.modelCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 90,
      width: 90,
      child: MyPageButton(
        text: modelCard.text,
        onPressed: () {},
        backgroundColor: Color(0xff6482AD),
        textColor: Color(0xfff0f0f0),
        iconData: modelCard.icon,
        iconsColor: modelCard.color,
      ),
    );
  }
}
