import 'package:detective_eye/SignUp03.dart';
import 'package:detective_eye/log_in05.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chooser02 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: SizedBox(height: 90)),
            // Big Logo in the center
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('assets/images/img.png', height: 200, width: 200),
            ),

            Expanded(child: SizedBox(height: 90)), // Add spacing between the logo and buttons

            // Two buttons at the bottom
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // First button with black border
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => log_in05()),
                      );
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    child: Text(
                      "Already have an account? Login",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),

                  SizedBox(height: 10), // Add spacing between the buttons

                  // Second button with grey background
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp03()),
                      );

                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    child: Text(
                      "Create New Account",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}