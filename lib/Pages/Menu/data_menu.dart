// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors_in_immutables

import 'package:echo_cash/Model/contact_model.dart';
import 'package:echo_cash/Pages/Component/menu_contact_listview.dart';
import 'package:echo_cash/Pages/Component/menu_header.dart';
import 'package:echo_cash/Pages/controllers/contact_controller.dart';
import 'package:echo_cash/Widgets/my_text.dart';
import 'package:echo_cash/Widgets/my_textfield.dart';
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
              MenuHeader(
                text: 'Contacts',
                iconData: Icons.contacts_rounded,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 60,
                color: Color(0xff7FA1C3),
                alignment: Alignment.centerLeft,
                child: MyText(
                  text: 'Contact Data',
                  fontsize: 24,
                  fontfamily: "MontserratSemi",
                  color: Color(0xfff0f0f0),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 120,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: MyTextfield(
                          hintText: 'Username',
                          fontsize: 16,
                          isObsecure: false,
                          controller: username,
                          onIconPressed: () {},
                          textColor: Color(0xfff0f0f0),
                          bgColor: Color(0xff7FA1C3),
                          textInputType: TextInputType.text),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: MyTextfield(
                          hintText: 'email',
                          fontsize: 16,
                          isObsecure: false,
                          controller: email,
                          onIconPressed: () {},
                          textColor: Color(0xfff0f0f0),
                          bgColor: Color(0xff7FA1C3),
                          textInputType: TextInputType.emailAddress),
                    ),
                  ],
                ),
              ),
              Container(
                width: 900,
                height: 800,
                child: ContactListView(
                  username: username.text,
                  email: email.text,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
