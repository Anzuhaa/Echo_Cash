// ignore_for_file: prefer_const_constructors

import 'package:echo_cash/Model/contact_model.dart';
import 'package:echo_cash/Pages/controllers/contact_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookmarkMenu extends StatelessWidget {
  const BookmarkMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ContactController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookmarks'),
      ),
      body: Obx(() {
        if (controller.bookmarks.isEmpty) {
          return const Center(child: Text('No bookmarks yet.'));
        }

        return ListView.builder(
          itemCount: controller.bookmarks.length,
          itemBuilder: (context, index) {
            final ContactModel item = controller.bookmarks[index];

            return ListTile(
              title: Text(item.name),
              subtitle: Text('Rp${item.bio.toString()}'),
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
                        title: const Text('Konfirmasi'),
                        content: const Text(
                            'Apakah Anda ingin menghapus dari bookmark?'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('No'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              Future.delayed(const Duration(milliseconds: 300),
                                  () {
                                controller.toggleBookmark(item);
                                Get.snackbar(
                                  "Bookmark Toggled",
                                  "${item.name} telah dihapus dari bookmark",
                                  snackPosition: SnackPosition.BOTTOM,
                                );
                              });
                            },
                            child: const Text('Yes'),
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
