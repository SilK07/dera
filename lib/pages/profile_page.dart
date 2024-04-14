import 'package:flutter/material.dart';

class profile_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // Profile picture section
              buildProfilePicture(),
              // User information section
              buildUserInfo(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProfilePicture() {
    return Container(
      padding: EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Center(
            child: Icon(
          Icons.person,
          size: 98,
        )),
      ),
    );
  }

  Widget buildUserInfo() {
    return Column(
      children: [
        Text(
          'SURMEET',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text('Cyber Expert'),
        Text('surmeet@sohangedu.in'),
      ],
    );
  }

  // Implement these methods to build additional sections (optional)
}
