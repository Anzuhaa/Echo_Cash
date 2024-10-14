import 'package:echo_cash/Model/contact_model.dart';
import 'package:echo_cash/Pages/Component/menu_bookmark_listview.dart';
import 'package:echo_cash/Pages/Component/menu_contact_listview.dart';
import 'package:echo_cash/Pages/Component/menu_header.dart';
import 'package:echo_cash/Pages/controllers/contact_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookmarkMenu extends StatelessWidget {
  const BookmarkMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the ContactController which includes the bookmark management.
    final ContactController controller = Get.find();

    return Scaffold(
      backgroundColor: Color(0xff6482AD),
      body: Column(
        children: [
          Container(
            child: MenuHeader(
                text: 'Bookmark Contact', iconData: Icons.bookmark_rounded),
          ),
          Container(height: 500, child: BookmarkListView()),
        ],
      ),
    );
  }
}
