// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:echo_cash/Pages/Component/menu_button.dart';
import 'package:echo_cash/Pages/Component/menu_header.dart';
import 'package:echo_cash/Pages/Component/transaction_detail.dart';
import 'package:echo_cash/Widgets/my_bottom_button.dart';
import 'package:echo_cash/Widgets/my_text.dart';
import 'package:echo_cash/Widgets/my_textfield.dart';
import 'package:echo_cash/main.dart';
import 'package:flutter/material.dart';

class TransactionMenu extends StatelessWidget {
  final String titleText;
  final String buttonText;
  final String boldText;
  final String semiText;
  final String nominalText;
  final VoidCallback onPressed;
  final Color detailColor;
  final IconData iconData;

  const TransactionMenu({
    super.key,
    required this.titleText,
    required this.buttonText,
    required this.boldText,
    required this.semiText,
    required this.onPressed,
    required this.detailColor,
    required this.nominalText,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6482AD),
      body: Flexible(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: MenuHeader(text: titleText, iconData: iconData),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: TransactionDetail(
                        boldText: boldText,
                        semiText: semiText,
                        onPressed: onPressed,
                        detailColor: detailColor),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: MyTextfield(
                      readMode: true,
                      hintText: nominalText,
                      fontsize: 20,
                      isObsecure: false,
                      controller: null,
                      onIconPressed: () {},
                      textColor: Color(0xff6482AD),
                      bgColor: Color(0xfff0f0f0),
                    ),
                  ),
                  Container(height: 430, child: MenuButton()),
                ],
              ),
            ),
            Spacer(),
            Container(
                height: 130,
                child: MyBottomButton(text: buttonText, onPressed: onPressed))
          ],
        ),
      ),
    );
  }
}
