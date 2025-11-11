// ignore_for_file: prefer_const_constructors

import 'package:echo_cash/Widgets/mobileWidgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> menuItems = [
      {
        'icon': Icons.settings,
        'label': 'Terms of Service',
        'onTap': () {},
      },
      {
        'icon': Icons.person,
        'label': 'My Contact',
        'onTap': () {
          Get.toNamed('/ContactMenu');
        },
      },
      {
        'icon': Icons.bookmark_outlined,
        'label': 'Favorite Contact',
        'onTap': () {
          Get.toNamed('/BookmarkMenu');
        },
      },
      {
        'icon': Icons.logout,
        'label': 'Log Out',
        'onTap': () {
          Get.offAllNamed('/');
        },
      },
    ];
    return GridView.builder(
      itemCount: menuItems.length,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
          childAspectRatio: 1.5,
          mainAxisExtent: 132),
      itemBuilder: (context, index) {
        final item = menuItems[index];
        return GestureDetector(
          onTap: item['onTap'],
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(item['icon'], color: Color(0xff6482AD), size: 48),
                SizedBox(height: 8),
                MyText(
                  text: item['label'],
                  textAlign: TextAlign.center,
                  fontsize: 16,
                  fontfamily: "MontserratSemi",
                  color: Color(0xff6482AD),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
