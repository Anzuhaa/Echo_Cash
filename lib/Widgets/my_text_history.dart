import 'package:echo_cash/Model/model_card.dart';
import 'package:echo_cash/Widgets/my_text.dart';
import 'package:flutter/material.dart';

class MyTextHistory extends StatelessWidget {
  final ModelHistory modelHistory;

  const MyTextHistory({super.key, required this.modelHistory});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Color(0xfff0f0f0),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(
                  text: modelHistory.historytitle,
                  fontsize: 16,
                  fontfamily: "MontserratBold",
                  color: Color(0xff6482AD),
                ),
                MyText(
                  text: modelHistory.historyDetail,
                  fontsize: 16,
                  fontfamily: "MontserratSemi",
                  color: Color(0xff6482AD),
                )
              ],
            ),
          ),
          Container(
            height: 90,
            width: 30,
            color: modelHistory.historyColor,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyText(
                text: modelHistory.historyPrice,
                fontsize: 16,
                fontfamily: "MontserratBold",
                color: Color(0xff6482AD),
              ),
            ),
          )
        ],
      ),
    );
  }
}
