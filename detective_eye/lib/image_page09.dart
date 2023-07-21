import 'package:flutter/material.dart';

class ImageDetailsPage extends StatelessWidget {
  final String name;
  final String date;
  final String cameraName;

  ImageDetailsPage({
    required this.name,
    required this.date,
    required this.cameraName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Details'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 10,),
            Container(
              height: 400,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                'assets/images/criminal.png', // Replace with actual image path or network image
                alignment: Alignment.center,
              ),
            ),

            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Name: $name',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Date: $date',
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Camera Name: $cameraName',
                style: TextStyle(fontSize: 25),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

// Usage:
// ImageDetailsPage(name: 'John Doe', date: '2023-07-21', cameraName: 'Front Camera')
