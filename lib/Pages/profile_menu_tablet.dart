// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:echo_cash/Pages/Component/menuComponent/menu_header.dart';
import 'package:echo_cash/Pages/Component/menuComponent/menu_profile_gridview.dart';
import 'package:echo_cash/Widgets/mobileWidgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileMenuTablet extends StatelessWidget {
  const ProfileMenuTablet({super.key});

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
                padding: EdgeInsets.only(left: 24, right: 8),
                child: Row(
                  children: [
                    Container(
                      width: 350,
                      child: Column(
                        children: [
                          Row(
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
                                      backgroundImage:
                                          AssetImage('assets/anzuha.jpg'),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Column(
                                children: [
                                  Center(
                                    child: MyText(
                                      textAlign: TextAlign.center,
                                      text: "Anzuhaa",
                                      fontsize: 24,
                                      fontfamily: 'MontserratSemi',
                                      color: Color(0xff6482AD),
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Center(
                                    child: MyText(
                                      textAlign: TextAlign.center,
                                      text: "Anzuha@gmail.com",
                                      fontsize: 20,
                                      fontfamily: "MontserratSemi",
                                      color: Color(0xff6482AD),
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    _buildProfileInfoItem(
                                        Icons.admin_panel_settings_rounded,
                                        'Admin'),
                                    _buildProfileInfoItem(
                                        Icons.location_on, 'Indonesia'),
                                    _buildProfileInfoItem(
                                        Icons.cake, '16 - 06'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 48),
                      width: 350,
                      height: 350,
                      child: MyGridView(),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileInfoItem(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: Color(0xff6482AD), size: 32),
        const SizedBox(height: 8),
        MyText(
          textAlign: TextAlign.center,
          text: label,
          fontsize: 16,
          fontfamily: "MontserratSemi",
          color: Color(0xff6482AD),
        ),
      ],
    );
  }
}
