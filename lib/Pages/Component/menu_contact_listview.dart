// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:echo_cash/Model/contact_model.dart';
import 'package:echo_cash/Pages/controllers/contact_controller.dart';
import 'package:echo_cash/Widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactListView extends StatelessWidget {
  final ContactController contactController = Get.put(ContactController());
  final String username;
  final String email;

  ContactListView({super.key, required this.username, required this.email});

  @override
  Widget build(BuildContext context) {
    contactController.loadContact();

    return Column(
      children: [
        GestureDetector(
          onTap: () {
            ContactModel contact = ContactModel(
              name: username,
              bio: 'No Bio Yet',
              email: email,
              id: null,
            );
            contactController.addContact(contact);
            Get.snackbar("Success", "Contact added successfully",
                snackPosition: SnackPosition.BOTTOM);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Color(0xff7FA1C3),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16),
            width: 250,
            height: 60,
            child: Row(
              children: [
                Expanded(
                  child: MyText(
                    text: "add favourite contact",
                    fontsize: 16,
                    fontfamily: 'MontserratSemi',
                    color: Color(0xfff0f0f0),
                  ),
                ),
                Icon(
                  Icons.bookmark_add,
                  color: Color(0xfff0f0f0),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Obx(() {
            return ListView.builder(
              itemCount: contactController.contacts.length,
              itemBuilder: (context, index) {
                final contact = contactController.contacts[index];
                return ListTile(
                  title: Text(contact.name),
                  subtitle: Text('${contact.bio} - ${contact.email}'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.delete,
                          color: Color(0xfff0f0f0),
                        ),
                        onPressed: () {
                          contactController.deleteContact(contact.id!);
                          Get.snackbar(
                              "Success", "Contact deleted successfully",
                              snackPosition: SnackPosition.BOTTOM);
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          contactController.bookmarks.contains(contact)
                              ? Icons.bookmark
                              : Icons.bookmark_border,
                          color: Color(0xfff0f0f0),
                        ),
                        onPressed: () {
                          contactController.toggleBookmark(contact);
                          Get.snackbar(
                              "Bookmark Toggled", "Bookmark status changed",
                              snackPosition: SnackPosition.BOTTOM);
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          }),
        ),
      ],
    );
  }
}
