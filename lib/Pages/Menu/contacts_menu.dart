// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors_in_immutables, unnecessary_null_comparison

import 'package:echo_cash/Model/contact_model.dart';
import 'package:echo_cash/Pages/Component/menuComponent/menu_contact_listview.dart';
import 'package:echo_cash/Pages/Component/menuComponent/menu_header.dart';
import 'package:echo_cash/controllers/contact_controller.dart';
import 'package:echo_cash/Widgets/mobileWidgets/my_textbutton.dart';
import 'package:echo_cash/Widgets/mobileWidgets/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactsMenu extends StatelessWidget {
  final ContactController contactController = Get.find();
  final TextEditingController username = TextEditingController();
  final TextEditingController email = TextEditingController();

  ContactsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6482AD),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                color: Color(0xff6482AD),
                child: MenuHeader(
                  text: 'Contacts',
                  iconData: Icons.contacts_rounded,
                ),
              ),
              SizedBox(height: 24),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    MyTextfield(
                        hintText: 'Username',
                        fontsize: 16,
                        isObsecure: false,
                        controller: username,
                        onIconPressed: () {},
                        textColor: Color(0xfff0f0f0),
                        bgColor: Color(0xff7FA1C3),
                        textInputType: TextInputType.text),
                    SizedBox(height: 16),
                    MyTextfield(
                        hintText: 'email',
                        fontsize: 16,
                        isObsecure: false,
                        controller: email,
                        onIconPressed: () {},
                        textColor: Color(0xfff0f0f0),
                        bgColor: Color(0xff7FA1C3),
                        textInputType: TextInputType.emailAddress),
                    SizedBox(height: 24),
                    MyTextbutton(
                      text: 'add contact',
                      onPressed: () {
                        if (username.text.isEmpty || email.text.isEmpty) {
                          Get.snackbar(
                            'Error',
                            'Please fill in all fields',
                            snackPosition: SnackPosition.TOP,
                            colorText: Color(0xfff0f0f0),
                            animationDuration: Duration(milliseconds: 400),
                            duration: Duration(milliseconds: 1000),
                          );
                          return;
                        }
                        if (email.text == null) {
                          Get.snackbar(
                            'Error',
                            'Bank email must be valid',
                            snackPosition: SnackPosition.TOP,
                            colorText: Color(0xfff0f0f0),
                            animationDuration: Duration(milliseconds: 400),
                            duration: Duration(milliseconds: 1000),
                          );
                          return;
                        }

                        bool emailExists = contactController.contacts
                            .any((contact) => contact.email == email.text);

                        if (emailExists) {
                          Get.snackbar(
                            'Error',
                            'Bank number already exists',
                            snackPosition: SnackPosition.TOP,
                            colorText: Color(0xfff0f0f0),
                            animationDuration: Duration(milliseconds: 400),
                            duration: Duration(milliseconds: 1000),
                          );
                          return;
                        }
                        ContactModel contact = ContactModel(
                          name: username.text.toString(),
                          email: email.text.toString(),
                        );
                        contactController.addContact(contact);

                        username.clear();
                        email.clear();

                        Get.snackbar(
                          "Success",
                          "Contact added successfully",
                          snackPosition: SnackPosition.TOP,
                          colorText: Color(0xfff0f0f0),
                          animationDuration: Duration(milliseconds: 400),
                          duration: Duration(milliseconds: 1000),
                        );
                      },
                      backgroundColor: Color(0xff7FA1C3),
                      textColor: Color(0xfff0f0f0),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xfff0f0f0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
              ),
              Container(height: 535, child: ContactListView()),
            ],
          ),
        ),
      ),
    );
  }
}
