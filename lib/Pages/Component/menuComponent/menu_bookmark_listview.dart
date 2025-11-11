// ignore_for_file: prefer_const_constructors, use_super_parameters

import 'package:echo_cash/Model/contact_model.dart';
import 'package:echo_cash/controllers/contact_controller.dart';
import 'package:echo_cash/Widgets/mobileWidgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookmarkListView extends StatelessWidget {
  const BookmarkListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ContactController controller = Get.find();
    controller.loadBookmarks();

    return Scaffold(
      backgroundColor: Color(0xff6482AD),
      body: Obx(() {
        if (controller.bookmarks.isEmpty) {
          return Center(
              child: MyText(
                  text: "No bookmark contact yet.",
                  fontsize: 20,
                  fontfamily: 'MontserratBold',
                  color: Color(0xfff0f0f0),
                  textAlign: TextAlign.center));
        }
        return ListView.builder(
          itemCount: controller.bookmarks.length,
          itemBuilder: (context, index) {
            final ContactModel bookmark = controller.bookmarks[index];

            return Container(
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Color(0xff7FA1C3),
              ),
              child: ListTile(
                title: MyText(
                    textAlign: TextAlign.left,
                    text: bookmark.name,
                    fontsize: 16,
                    fontfamily: 'MontserratBold',
                    color: Color(0xfff0f0f0)),
                subtitle: MyText(
                    text: bookmark.email,
                    fontsize: 14,
                    fontfamily: "MontserratSemi",
                    color: Color(0xfff0f0f0),
                    textAlign: TextAlign.left),
                trailing: IconButton(
                  icon: Icon(
                    Icons.bookmark,
                    color: Color(0xfff0f0f0),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Color(0xff6482AD),
                          titleTextStyle: TextStyle(color: Color(0xfff0f0f0)),
                          contentTextStyle: TextStyle(color: Color(0xfff0f0f0)),
                          title: MyText(
                              text: "Are you sure?",
                              fontsize: 24,
                              fontfamily: "MontserratBold",
                              color: Color(0xfff0f0f0),
                              textAlign: TextAlign.left),
                          content: MyText(
                              text:
                                  'Do you want to remove this contact from your Bookmarks ?',
                              fontsize: 16,
                              fontfamily: "MontserratMedi",
                              color: Color(0xfff0f0f0),
                              textAlign: TextAlign.left),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('No',
                                  style: TextStyle(color: Color(0xfff0f0f0))),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                controller.toggleBookmark(bookmark);
                                Future.delayed(
                                    Duration(milliseconds: 100), () {});
                              },
                              child: Text('Yes',
                                  style: TextStyle(color: Color(0xfff0f0f0))),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
