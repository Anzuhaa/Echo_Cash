// ignore_for_file: prefer_const_constructors

import 'package:echo_cash/Model/model_card.dart';
import 'package:echo_cash/Pages/login_page.dart';
import 'package:echo_cash/Widgets/my_pagebutton.dart';
import 'package:echo_cash/Widgets/my_text.dart';
import 'package:echo_cash/Widgets/my_text_history.dart';
import 'package:echo_cash/Widgets/my_textbutton.dart';
import 'package:flutter/material.dart';

class AdapterHistory extends StatelessWidget {
  final ModelHistory modelHistory;

  const AdapterHistory({super.key, required this.modelHistory});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 90,
      width: 480,
      child: MyTextHistory(modelHistory: modelHistory),
    );
  }
}
