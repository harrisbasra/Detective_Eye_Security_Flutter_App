import 'package:detective_eye/SignUp03.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddPhone extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [Expanded(flex: 1, child: SizedBox(height: 20)),
              Text(
                "Add Phone",
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'LeagueGothic',
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Expanded(flex: 1, child: SizedBox(height: 20,)),

              TextField(
                decoration: InputDecoration(
                  hintText: "Add Phone",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              Expanded(flex: 2, child: SizedBox(height: 20,)),
              SizedBox(
                height: 60,
                width: 90,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(fontSize: 30, fontFamily: 'Inter', color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 50.0),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }

}