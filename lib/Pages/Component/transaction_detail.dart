import 'package:echo_cash/Widgets/my_text.dart';
import 'package:flutter/material.dart';

class TransactionDetail extends StatelessWidget {
  final String boldText;
  final String semiText;
  final VoidCallback onPressed;
  final Color detailColor;
  const TransactionDetail({
    super.key,
    required this.boldText,
    required this.semiText,
    required this.onPressed,
    required this.detailColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Color(0xfff0f0f0),
      ),
      width: double.infinity,
      height: 80,
      child: Row(
        children: [
          SizedBox(width: 24),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Column(
                children: [
                  MyText(
                    text: boldText,
                    fontsize: 20,
                    fontfamily: "MontserratBold",
                    color: Color(0xff6482AD),
                  ),
                  MyText(
                    text: semiText,
                    fontsize: 16,
                    fontfamily: "MontserratSemi",
                    color: Color(0xff6482AD),
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 60),
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              width: 60,
              height: 80,
              color: detailColor,
            ),
          ),
        ],
      ),
    );
  }
}
