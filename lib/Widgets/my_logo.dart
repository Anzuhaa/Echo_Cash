// ignore_for_file: prefer_const_constructors

import 'package:echo_cash/Widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyLogo extends StatelessWidget {
  final double logoSize;
  final MainAxisAlignment mainAxisAlignment;

  const MyLogo(
      {super.key, required this.logoSize, required this.mainAxisAlignment});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        MyText(
          text: "ECH",
          fontsize: logoSize,
          fontfamily: 'MontserratBold',
          color: Color(0xffF0F0F0),
        ),
        SizedBox(width: 4),
        SvgPicture.asset(
          'assets/echo_logo.svg',
          width: logoSize,
          height: logoSize,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
