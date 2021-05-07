import 'package:flutter/material.dart';
import 'package:lifeline/colors.dart';
import 'welcomeScreen.dart';

class DoctorslistScreen extends StatefulWidget {
  @override
  _DoctorslistScreenState createState() => _DoctorslistScreenState();
}

class _DoctorslistScreenState extends State<DoctorslistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //appbar has logo, sign in, log in
        backgroundColor: primaryColor,
        // automaticallyImplyLeading:
        //     false, //by this we  removed the back button in appbar. user will use logout to  go back to welcome screen.
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  //logo
                  Image.asset(
                    'assets/logo.png',
                    fit: BoxFit.contain,
                    height: 32,
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 40),
                    //this container has log out button
                    width: 80,
                    child: ElevatedButton(
                      child: Text(
                        'log out',
                        style: TextStyle(fontSize: 15),
                      ),
                      onPressed: () {
                        // with this Navigator we connected the Logout button with Welcome Screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return WelcomeScreen();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ], //children
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            //this container has the text 'emergency phone numbers'
            color: primaryColor,
            height: 30,
            width: double.infinity,
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 0, top: 20),

            child: Text(
              "List of heart specialists in Dhaka:",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
