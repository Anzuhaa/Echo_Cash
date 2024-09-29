// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:echo_cash/Component/adapter_list_card.dart';
import 'package:echo_cash/Model/model_card.dart';
import 'package:flutter/material.dart';

class MainContent extends StatelessWidget {
  List<ModelCard> cardData = [
    ModelCard(
        Icons.generating_tokens_outlined, Color(0xfff0f0f0), "Benefit", () {}),
    ModelCard(
        Icons.card_giftcard_rounded, Color(0xfff0f0f0), "Coupon Party", () {}),
    ModelCard(Icons.photo_camera_back_outlined, Color(0xfff0f0f0),
        "Refund Request", () {}),
    ModelCard(
        Icons.build_circle_outlined, Color(0xfff0f0f0), "Help Center", () {}),
    ModelCard(Icons.file_upload_outlined, Color(0xfff0f0f0),
        "How to Topup Cash", () {}),
    ModelCard(Icons.qr_code_2_outlined, Color(0xfff0f0f0),
        " How to Pay With Qr", () {}),
    ModelCard(Icons.compare_arrows_outlined, Color(0xfff0f0f0),
        "How to Transfer", () {}),
    ModelCard(Icons.person_outline_outlined, Color(0xfff0f0f0),
        "Customer Service", () {}),
  ];

  MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, bottom: 32),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 2 / 1),
        itemCount: cardData.length,
        itemBuilder: (context, index) {
          return AdapterCard(modelCard: cardData[index]);
        },
      ),
    );
  }
}
