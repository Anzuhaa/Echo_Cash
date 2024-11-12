// ignore_for_file: unused_local_variable

import 'package:echo_cash/Pages/mobileLayout/Component/menuComponent/menu_bookmark_listview.dart';
import 'package:echo_cash/Pages/mobileLayout/Component/menuComponent/menu_header.dart';
import 'package:echo_cash/controllers/contact_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookmarkMenu extends StatelessWidget {
  const BookmarkMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ContactController controller = Get.find();

    return Scaffold(
      backgroundColor: Color(0xff6482AD),
      body: Column(
        children: [
          Container(
            child: MenuHeader(
                text: 'Bookmark Contact', iconData: Icons.bookmark_rounded),
          ),
          Container(height: 820, child: BookmarkListView()),
        ],
      ),
    );
  }
}
