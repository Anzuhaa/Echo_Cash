// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyBalance extends StatelessWidget {
  final bool isVisible;
  final String balance;

  const MyBalance({
    super.key,
    required this.isVisible,
    required this.balance,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6482AD),
      body: Center(
        child: Container(
          child: Text(
            isVisible ? balance : 'tap untuk lihat',
            style: TextStyle(
              fontSize: 32,
              color: Color(0xfff0f0f0),
              fontFamily: 'MontserratSemi',
            ),
          ),
        ),
      ),
    );
  }
}
