import 'package:flutter/material.dart';
import 'package:lifeline/colors.dart';
import 'package:lifeline/screens/signinScreen.dart';
import 'bloodDonorScreen.dart';
import 'bloodSeekerScreen.dart';
import 'loginScreen.dart';
import 'bloodSeekerScreen.dart';
import 'bloodDonorScreen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //appbar has logo, sign in, log in
        backgroundColor: primaryColor,
        automaticallyImplyLeading:
            false, // by using this, when we go back to welcome screen from other screens, there will be no back button on appbar
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    //this container has sign in button
                    width: 77,
                    child: ElevatedButton(
                      child: Text(
                        'sign in',
                        style: TextStyle(fontSize: 15),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SigninScreen();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    //this container has log in button
                    width: 77,
                    child: ElevatedButton(
                      child: Text(
                        'log in',
                        style: TextStyle(fontSize: 15),
                      ),
                      onPressed: () {
                        // with this Navigator we connected the Login button with Login Screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return LoginScreen();
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
            color: Colors.blueAccent,
            height: 30,
            width: double.infinity,
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 0, top: 20),

            child: Text(
              "Emergency phone numbers",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            //this container has the phone numbers
            color: Colors.blue,
            height: 300,
            width: double.infinity,
            margin: EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 30),
            child: SingleChildScrollView(
              child: Text(
                "\nLabaid Hospital, Uttara: \n017XXXXXXXX \n\nSquare Hospital, Mirpur: \n017XXXXXXXX \n\nHolylab Hospital, Dhanmondi: 017XXXXXXXX \n\nPopular Hospital, Panthapath: 017XXXXXXXX \n\nSquare Hospital, Mohammadpur: 017XXXXXXXX \n\nLabaid hospital, Puran Dhaka: 017XXXXXXXX",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                ),
              ),
            ),
          ),
          Container(
            //this container has the text 'Blood donation section'
            color: bloodDonationBoxColor,
            height: 30,
            width: double.infinity,
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 0),

            child: Text(
              "Blood donation Section",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            //this container has the text 'Are you a seeker or a donor?'
            color: bloodDonationBoxColor,
            height: 40,
            width: double.infinity,
            margin: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 15),

            child: Text(
              " Are you a seeker or a donor?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            //this container has the button "I'm a seeker"
            child: Row(
              //in this row we created 2 columns to add two buttons
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      width: 200,
                      height: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: ElevatedButton(
                          child: Text(
                            'I\'m a seeker',
                            style: TextStyle(fontSize: 25),
                          ),
                          onPressed: () {
                            // with this Navigator we connected the Login button with Login Screen
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return SeekerScreen();
                                },
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      //this container has the button "I'm a donor"
                      width: 200,
                      height: 50,

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: ElevatedButton(
                          child: Text(
                            'I\'m a donor',
                            style: TextStyle(fontSize: 25),
                          ),
                          onPressed: () {
                            // with this Navigator we connected the Login button with Login Screen
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DonorScreen();
                                },
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ], //children
            ),
          ),
          Container(
            //this container has the text 'Description section'
            color: primaryColor,
            height: 30,
            width: double.infinity,
            margin: EdgeInsets.only(left: 30, right: 30, bottom: 0, top: 20),

            child: Text(
              "Description Section",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            //This container has the description of the app
            color: primaryColor,
            height: 140,
            width: double.infinity,
            margin: EdgeInsets.only(top: 0, right: 10, left: 0, bottom: 30),
            child: SingleChildScrollView(
              child: Text(
                  "Welcome to Lifeline! \n \nLifeline is built so that the users can get easy access to Doctor's information all over Dhaka city. \n\nLifeline provides Emergency cell numbers, working hours, Hospital locations of many well reputed doctors all across Dhaka. \n\nIt also contains emergency numbers of hospitals all over Dhaka.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
        ], //children
      ),
    );
  }
}
