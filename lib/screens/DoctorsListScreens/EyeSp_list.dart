import 'package:flutter/material.dart';
import 'package:lifeline/colors.dart';
import 'package:lifeline/screens/welcomeScreen.dart';
import 'package:lifeline/screens/doctorsData.dart';

class EyeSp_List extends StatefulWidget {
  @override
  _EyeSp_ListState createState() => _EyeSp_ListState();
}

class _EyeSp_ListState extends State<EyeSp_List> {
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
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: [
                Container(
                  //this container has the text 'emergency phone numbers'
                  color: primaryColor,
                  height: 30,
                  width: double.infinity,
                  margin:
                      EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 20),

                  child: Text(
                    "List of Eye specialists in Dhaka:",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                DoctorsData('Dr. Marjuk', 'Square hospital, Uttara',
                    '01700000000', '8:00AM - 9:00PM'),
                DoctorsData('Dr. Rasel', 'Apollo hospital, Dhanmondi',
                    '01700000000', '8:00AM - 9:00PM'),
                DoctorsData('Dr. Bina', 'Labaid hospital, Uttara',
                    '01700000000', '8:00AM - 9:00PM'),
                DoctorsData('Dr. Shafik', 'Uniaid hospital, Mirpur',
                    '01700000000', '8:00AM - 9:00PM'),
                DoctorsData('Dr. Rupom', 'Square hospital, Uttara',
                    '01700000000', '8:00AM - 9:00PM'),
                DoctorsData(
                    'Dr. Bishwajit',
                    'National heart foundation, Mirpur',
                    '01700000000',
                    '8:00AM - 9:00PM'),
                DoctorsData('Dr. Ashan', 'Labaid hospital,uttara',
                    '01700000000', '8:00AM - 9:00PM'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
