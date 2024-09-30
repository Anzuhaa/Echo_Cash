// ignore_for_file: prefer_const_constructors

import 'package:echo_cash/Pages/Component/menu_header.dart';
import 'package:echo_cash/Widgets/my_circle_avatar.dart';
import 'package:echo_cash/Widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  color: Color(0xff6482AD),
                  child: MenuHeader(
                      text: "Profile",
                      iconData: Icons.account_balance_wallet_rounded)),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          color: Color(0xff6482AD),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 10,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          radius: 55,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('assets/anzuha.jpg'),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: MyText(
                        text: "Anzuhaa",
                        fontsize: 24,
                        fontfamily: 'MontserratSemi',
                        color: Color(0xff6482AD),
                      ),
                    ),
                    SizedBox(height: 4),
                    Center(
                      child: MyText(
                        text: "Anzuha@gmail.com",
                        fontsize: 20,
                        fontfamily: "MontserratSemi",
                        color: Color(0xff6482AD),
                      ),
                    ),
                    SizedBox(height: 24),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Color(0xfffefefe),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _buildProfileInfoItem(
                                  Icons.admin_panel_settings_rounded, 'Admin'),
                              _buildProfileInfoItem(
                                  Icons.location_on, 'Indonesia'),
                              _buildProfileInfoItem(Icons.cake, '16 - 06'),
                            ],
                          ),
                          SizedBox(height: 16),
                          MyText(
                              text: "Input Your Bio",
                              fontsize: 16,
                              fontfamily: "MontserratSemi",
                              color: Color(0xff6482AD))
                        ],
                      ),
                    ),
                    SizedBox(height: 24),
                    ListTile(
                      leading: Icon(Icons.settings, color: Color(0xff6482AD)),
                      title: MyText(
                          text: "Terms of Service",
                          fontsize: 20,
                          fontfamily: "MontserratSemi",
                          color: Color(0xff6482AD)),
                      trailing: Icon(Icons.arrow_forward_ios,
                          color: Color(0xff6482AD)),
                      onTap: () {},
                    ),
                    ListTile(
                        leading: Icon(Icons.logout, color: Color(0xff6482AD)),
                        title: MyText(
                            text: "Log Out",
                            fontsize: 20,
                            fontfamily: "MontserratSemi",
                            color: Color(0xff6482AD)),
                        trailing: Icon(Icons.arrow_forward_ios,
                            color: Color(0xff6482AD)),
                        onTap: () {
                          Get.offAllNamed('/');
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xfff0f0f0),
    );
  }

  Widget _buildProfileInfoItem(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: Color(0xff6482AD), size: 32),
        const SizedBox(height: 8),
        MyText(
          text: label,
          fontsize: 16,
          fontfamily: "MontserratSemi",
          color: Color(0xff6482AD),
        ),
      ],
    );
  }
}
