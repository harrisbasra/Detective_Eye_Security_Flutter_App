import 'package:flutter/material.dart';

import 'image_page09.dart';

class CustomPage extends StatelessWidget {
  final String text;
  final String icon;

  CustomPage({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20), // Adding some spacing between the elements
          // Icon at the top with size 60 by 40
          SizedBox(
            width: 250,
            height: 150,
            child: Image.asset(icon),
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blue[800],
              fontSize: 35,
            ),
          ),
          SizedBox(height: 30), // Adding some spacing between the elements
          GroupCard2(groupName: 'Michael Roger', camera: 'Google Nest', Date: '2023-07-21'),
          GroupCard2(groupName: 'Mason Jerry', camera: 'Arlo', Date: '2023-07-22'),
          GroupCard2(groupName: 'Stephen Mason', camera: 'Amazon Astra', Date: '2023-07-23'),
          GroupCard2(groupName: 'Aaron Paul', camera: 'Ring', Date: '2023-07-21'),
          GroupCard2(groupName: 'Alice', camera: 'Lorex', Date: '2023-07-22'),
          GroupCard2(groupName: 'Bob', camera: 'ReoLink', Date: '2023-07-23'),
        ],
      ),
    );
  }
}

class GroupCard2 extends StatelessWidget {
  final String groupName;
  final String Date;
  final String camera;

  GroupCard2({required this.groupName, required this.camera, required this.Date});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Card(
        color: Colors.grey.shade50,
        child: ListTile(
          title: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  groupName,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.start,
                ),
              ),
              Row(children: [
                SizedBox(height: 10,),
                Text(
                  Date,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(width: 10,),
                Text(
                  camera,
                  style: TextStyle(fontSize: 18, color: Color.fromRGBO(0, 0, 0, 0.5)),
                ),
              ],
              ),
            ],
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ImageDetailsPage(name: groupName, date: Date, cameraName: camera,)),
            );
          },
        ),
      ),
    );
  }
}
