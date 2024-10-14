import 'package:echo_cash/Pages/controllers/contact_controller.dart';
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
      backgroundColor: Color(0xff6482AD),
      body: Obx(
        () {
          return ListView.builder(
            itemCount: contactController.contacts.length,
            itemBuilder: (context, index) {
              final contact = contactController.contacts[index];
              return ListTile(
                title: Text(contact.name),
                subtitle: Text(contact.email),
                trailing: Container(
                  width: 100,
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(isBookmarked
                            ? Icons.bookmark_border_rounded
                            : Icons.bookmark_rounded),
                        onPressed: () {
                          _toggleBookmark();
                          contactController.toggleBookmark(contact);
                          contactController.loadContacts();
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          contactController.deleteContact(contact.id!);
                          contactController.loadContacts();
                        },
                      ),
                    ],
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
