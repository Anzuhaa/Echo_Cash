// ignore_for_file: prefer_const_constructors

import 'package:echo_cash/Component/adapter_list_history.dart';
import 'package:echo_cash/Model/model_card.dart';
import 'package:flutter/material.dart';

class MenuHistoryContent extends StatelessWidget {
  const MenuHistoryContent({super.key});

  @override
  Widget build(BuildContext context) {
    List<ModelHistory> historyData = [
      ModelHistory("Wuthering Waves Subscription", "22 - 09 - 2024 ( Failed )",
          "Rp 200.000", Color(0x20FF0F00)),
      ModelHistory("Wuthering Waves Subscription", "20 - 08 - 2024 ( Success )",
          "Rp 200.000", Color(0x2014FF00)),
      ModelHistory("Wuthering Waves Subscription", "18 - 07 - 2024 ( Success )",
          "Rp 200.000", Color(0x2014FF00)),
      ModelHistory("Wuthering Waves Subscription", "22 - 09 - 2024 ( Failed )",
          "Rp 200.000", Color(0x20FF0F00)),
      ModelHistory("Wuthering Waves Subscription", "22 - 09 - 2024 ( Failed )",
          "Rp 200.000", Color(0x20FF0F00)),
      ModelHistory("Wuthering Waves Subscription", "20 - 08 - 2024 ( Success )",
          "Rp 200.000", Color(0x2014FF00)),
      ModelHistory("Wuthering Waves Subscription", "18 - 07 - 2024 ( Success )",
          "Rp 200.000", Color(0x2014FF00)),
      ModelHistory("Wuthering Waves Subscription", "22 - 09 - 2024 ( Failed )",
          "Rp 200.000", Color(0x20FF0F00)),
      ModelHistory("Wuthering Waves Subscription", "20 - 08 - 2024 ( Success )",
          "Rp 200.000", Color(0x2014FF00)),
      ModelHistory("Wuthering Waves Subscription", "18 - 07 - 2024 ( Success )",
          "Rp 200.000", Color(0x2014FF00)),
      ModelHistory("Wuthering Waves Subscription", "22 - 09 - 2024 ( Failed )",
          "Rp 200.000", Color(0x20FF0F00)),
      ModelHistory("Wuthering Waves Subscription", "20 - 08 - 2024 ( Success )",
          "Rp 200.000", Color(0x2014FF00)),
      ModelHistory("Wuthering Waves Subscription", "18 - 07 - 2024 ( Success )",
          "Rp 200.000", Color(0x2014FF00)),
    ];

    return Padding(
      padding: EdgeInsets.only(right: 8, left: 8, bottom: 32),
      child: Container(
        height: 900,
        child: ListView.builder(
          itemCount: historyData.length,
          itemBuilder: (context, index) {
            return AdapterHistory(modelHistory: historyData[index]);
          },
        ),
      ),
    );
    ;
  }
}
