import 'package:detective_eye/Chooser02.dart';
import 'package:detective_eye/CustomsPage099.dart';
import 'package:flutter/material.dart';

import 'Groups_Page06.dart';

class OptionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Replace with your desired icon
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 20,),
          GroupCardX(
            groupName: "TOP TEN MOST WANTED",
            profilePic: 'assets/images/police.png',
          ),
          GroupCardX(
            groupName: "FUGITIVES",
            profilePic: 'assets/images/police.png',
          ),
          GroupCardX(
            groupName: "CAPITAL VIOLENCE",
            profilePic: 'assets/images/police.png',
          ),
          GroupCardX(
            groupName: "TERRORISM",
            profilePic: 'assets/images/police.png',
          ),
          GroupCardX(
            groupName: "KIDNAPPINGS/MISSING PERSONS",
            profilePic: 'assets/images/police.png',
          ),
          GroupCardX(
            groupName: "PARENTAL KIDNAPPINGS",
            profilePic: 'assets/images/police.png',
          ),
          GroupCardX(
            groupName: "SEEKING INFORMATION",
            profilePic: 'assets/images/police.png',
          ),
          // Add more GroupCard instances here if needed.
        ],
      ),
    );
  }
}

class GroupCardX extends StatelessWidget {
  final String groupName;
  final String profilePic;

  GroupCardX({required this.groupName, required this.profilePic});

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
              MaterialPageRoute(builder: (context) => CustomPage(text: groupName, icon: 'assets/images/img.png')),
            );
          },
        ),
      ),
    );
  }
}
