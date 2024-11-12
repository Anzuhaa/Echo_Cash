// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProfileMenuTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 600, // Adjusted for tablet view
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 40),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Header with Logo and App Title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Image.asset(
                    'assets/anzuha.jpg', // Replace with your logo asset
                    width: 80,
                    height: 80,
                  ),
                ],
              ),
              SizedBox(height: 30),

              // Profile Picture, Name, Email
              Row(
                children: [
                  Image.asset(
                    'assets/anzuha.jpg', // Replace with your profile picture or icon
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Anzuhaa',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Anzuha@gmail.com',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),

              // Top Row Options
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                childAspectRatio: 2.5,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _buildMenuButton(Icons.shield, 'Detail', () {
                    // Add your logic
                  }),
                  _buildMenuButton(Icons.place, 'Region', () {
                    // Add your logic
                  }),
                  _buildMenuButton(Icons.cake, 'Birthday', () {
                    // Add your logic
                  }),
                  _buildMenuButton(Icons.edit, 'Input Your Bio', () {
                    // Add your logic
                  }),
                ],
              ),
              SizedBox(height: 20),

              // Bottom Row Options
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                childAspectRatio: 1.5,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _buildMenuButton(Icons.settings, 'Terms of Service', () {
                    // Add your logic
                  }),
                  _buildMenuButton(Icons.logout, 'Log Out', () {
                    // Add your logic
                  }),
                  _buildMenuButton(Icons.contact_mail, 'Contact', () {
                    // Add your logic
                  }),
                  _buildMenuButton(Icons.bookmark, 'Bookmark', () {
                    // Add your logic
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor:
          Color(0xFF90CAF9), // Background color similar to your design
    );
  }

  Widget _buildMenuButton(IconData icon, String label, Function onTap) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.white),
          SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
