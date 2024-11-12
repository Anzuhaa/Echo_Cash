import 'package:flutter/material.dart';

class MyTextSpan extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final double fontsize;
  final String fontfamily;
  final Color colorPrimary;
  final Color colorSpan;
  final TextAlign textAlign;

  const MyTextSpan({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.fontsize,
    required this.fontfamily,
    required this.colorPrimary,
    required this.colorSpan,
    required this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: RichText(
      textAlign: textAlign,
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(text: text1, style: TextStyle(color: colorPrimary)),
          TextSpan(text: text2, style: TextStyle(color: colorSpan)),
          TextSpan(text: text3, style: TextStyle(color: colorPrimary)),
          TextSpan(text: text4, style: TextStyle(color: colorSpan)),
        ],
      ),
    ));
  }
}
