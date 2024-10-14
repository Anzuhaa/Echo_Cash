// ignore_for_file: prefer_const_constructors

import 'package:echo_cash/Model/contact_model.dart';
import 'package:echo_cash/Pages/controllers/contact_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookmarkListView extends StatelessWidget {
  const BookmarkListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the ContactController which includes the bookmark management.
    final ContactController controller = Get.find();
    controller.loadContacts();

    return Scaffold(
      backgroundColor: Color(0xff6482AD),
      body: Obx(() {
        if (controller.bookmarks.isEmpty) {
          return Center(child: Text('No bookmarks yet.'));
        }
        return ListView.builder(
          itemCount: controller.bookmarks.length,
          itemBuilder: (context, index) {
            final ContactModel bookmark = controller.bookmarks[index];

            return ListTile(
              title: Text(bookmark.name),
              subtitle: Text(bookmark.email),
              trailing: IconButton(
                icon: Icon(
                  Icons.bookmark,
                  color: Colors.orange,
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Confirmation'),
                        content: Text(
                            'Do you want to remove this contact from bookmarks?'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('No'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              controller.toggleBookmark(bookmark);
                              Future.delayed(const Duration(milliseconds: 300),
                                  () {
                                Get.snackbar(
                                  "Bookmark Toggled",
                                  "${bookmark.name} has been removed from bookmarks",
                                  snackPosition: SnackPosition.BOTTOM,
                                );
                              });
                            },
                            child: Text('Yes'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            );
          },
        );
      }),
    );
  }
}
