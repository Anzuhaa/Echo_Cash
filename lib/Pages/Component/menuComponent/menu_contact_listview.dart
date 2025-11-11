// ignore_for_file: prefer_const_constructors

import 'package:echo_cash/controllers/contact_controller.dart';
import 'package:echo_cash/Widgets/mobileWidgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactListView extends StatefulWidget {
  const ContactListView({super.key});

  @override
  State<ContactListView> createState() => _ContactListViewState();
}

class _ContactListViewState extends State<ContactListView> {
  bool isBookmarked = true;

  final ContactController contactController = Get.find();

  void _toggleBookmark() {
    setState(() {
      isBookmarked = !isBookmarked;
    });
  }

  @override
  Widget build(BuildContext context) {
    contactController.loadContacts();
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: Obx(
        () {
          return ListView.builder(
            itemCount: contactController.contacts.length,
            itemBuilder: (context, index) {
              final contact = contactController.contacts[index];
              final isBookmarked = contact.bookmark == 0;
              return Container(
                margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Color(0x906482AD),
                ),
                child: ListTile(
                  title: MyText(
                      textAlign: TextAlign.left,
                      text: contact.name,
                      fontsize: 16,
                      fontfamily: 'MontserratBold',
                      color: Color(0xfff0f0f0)),
                  subtitle: MyText(
                      text: contact.email,
                      fontsize: 14,
                      fontfamily: "MontserratSemi",
                      color: Color(0xfff0f0f0),
                      textAlign: TextAlign.left),
                  trailing: Container(
                    width: 100,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            isBookmarked
                                ? Icons.bookmark_border_rounded
                                : Icons.bookmark_rounded,
                            color: Color(0xfff0f0f0),
                          ),
                          onPressed: () {
                            _toggleBookmark();
                            contactController.toggleBookmark(contact);
                            contactController.loadContacts();
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.delete,
                            color: Color(0xfff0f0f0),
                          ),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    backgroundColor: Color(0xff6482AD),
                                    titleTextStyle:
                                        TextStyle(color: Color(0xfff0f0f0)),
                                    contentTextStyle:
                                        TextStyle(color: Color(0xfff0f0f0)),
                                    title: MyText(
                                        text: "Are you sure?",
                                        fontsize: 24,
                                        fontfamily: "MontserratBold",
                                        color: Color(0xfff0f0f0),
                                        textAlign: TextAlign.left),
                                    content: MyText(
                                        text:
                                            'Do you want to remove this contact from your Contacts ?',
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
                                              style: TextStyle(
                                                  color: Color(0xfff0f0f0)))),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                            contactController
                                                .deleteContact(contact.id!);
                                            Future.delayed(
                                                Duration(milliseconds: 100),
                                                () {
                                              Get.snackbar(
                                                "Contact Deleted",
                                                "${contact.name} has been delete from your contacts",
                                                snackPosition:
                                                    SnackPosition.TOP,
                                                colorText: Color(0xfff0f0f0),
                                                animationDuration:
                                                    Duration(milliseconds: 400),
                                                duration: Duration(
                                                    milliseconds: 2000),
                                              );
                                            });
                                          },
                                          child: Text('Yes',
                                              style: TextStyle(
                                                  color: Color(0xfff0f0f0)))),
                                    ],
                                  );
                                });
                            contactController.loadContacts();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
