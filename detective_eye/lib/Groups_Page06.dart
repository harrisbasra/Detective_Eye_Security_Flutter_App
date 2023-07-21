import 'package:detective_eye/Chooser02.dart';
import 'package:detective_eye/Options_Page07.dart';
import 'package:detective_eye/SettingsPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Groups'),
        leading: IconButton(
          icon: Icon(Icons.add), // Replace with your desired icon
          onPressed: () {
            // Add your logic for the leading button here.
            // For example, you can open a drawer or navigate back manually.
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => chooser02()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          GroupCard(
            groupName: "Administrative Group",
            profilePic: 'assets/images/group1.png',
          ),
          GroupCard(
            groupName: "Group 2",
            profilePic: 'assets/images/group1.png',
          ),
          GroupCard(
            groupName: "Group 3",
            profilePic: 'assets/images/group1.png',
          ),

          // Add more GroupCard instances here if needed.
        ],
      ),
    );
  }
}

class GroupCard extends StatelessWidget {
  final String groupName;
  final String profilePic;

  GroupCard({required this.groupName, required this.profilePic});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Card(
        color: Colors.grey,
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(profilePic),
          ),
          title: Text(
            groupName,
            style: TextStyle(fontSize: 24),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OptionsPage()),
            );
          },
        ),
      ),
    );
  }
}
