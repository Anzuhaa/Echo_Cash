// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:echo_cash/Pages/Component/menuComponent/menu_header.dart';
import 'package:echo_cash/Pages/Menu/transactionMenu/transaction_detail.dart';
import 'package:echo_cash/Widgets/mobileWidgets/my_bottom_button.dart';
import 'package:echo_cash/Widgets/mobileWidgets/my_textfield.dart';
import 'package:flutter/material.dart';

class TransactionMenu extends StatelessWidget {
  final String titleText;
  final String buttonText;
  final String boldText;
  final String semiText;
  final String nominalText;
  final String usercodeText;
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
    required this.usercodeText,
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
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: MyTextfield(
                      textInputType: TextInputType.number,
                      hintText: usercodeText,
                      fontsize: 20,
                      isObsecure: false,
                      controller: null,
                      onIconPressed: () {},
                      textColor: Color(0xff6482AD),
                      bgColor: Color(0xfff0f0f0),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: MyTextfield(
                      textInputType: TextInputType.number,
                      hintText: nominalText,
                      fontsize: 20,
                      isObsecure: false,
                      controller: null,
                      onIconPressed: () {},
                      textColor: Color(0xff6482AD),
                      bgColor: Color(0xfff0f0f0),
                    ),
                  ),
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
