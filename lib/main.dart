import 'package:flutter/material.dart';

void main() => runApp(Lifeline());

class Lifeline extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Lifeline> { 
  final primaryColor = const Color(0xFFFFFFFF);  //white color to get mixed with the background
  final emergencyBoxColor = const Color(0xFFB71C1C);  //red color to use in the emergency sections
  final bloodDonationBoxColor = const Color(0xFF4DD9E1);  //light blue color for the blood donation section
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //to remove debug tag on top
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      home: Scaffold(
        appBar: AppBar( //appbar has logo, sign in, log in
          backgroundColor: primaryColor,
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [ //logo
                    Image.asset(
                      'assets/logo.png',
                      fit: BoxFit.contain,
                      height: 32,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container( //this container has sign in button
                      width: 77,
                      child: ElevatedButton(
                        child: Text(
                          'sign in',
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container( //this container has log in button
                      width: 77,
                      child: ElevatedButton(
                        child: Text(
                          'log in',
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {},
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

              Container(     //this container has the text 'emergency phone numbers'
              color: emergencyBoxColor,
              height: 30,
              width: double.infinity,
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 0,top: 20),

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


            Container(   //this container has the phone numbers
              color: emergencyBoxColor,
              height: 300,
              width: double.infinity,
              margin: EdgeInsets.only(top: 0, left: 30, right: 30, bottom: 30),
              child: SingleChildScrollView(
                child: Text(
                  "  \n \n phone number 1 \n phone number 2 \n phone number 3 \n phone number 4 \n phone number 5 \n phone number 6 \n phone number 7 \n phone number 8 \n phone number 9 \n phone number 10 \n phone number 11 \n phone number 12",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            Container(     //this container has the text 'Blood donation section'
              color: bloodDonationBoxColor,
              height: 30,
              width: double.infinity,
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 0),

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
          
            Container(   //this container has the text 'Are you a seeker or a donor?'
              color: bloodDonationBoxColor,
              height: 40,
              width: double.infinity,
              margin: EdgeInsets.only(left: 30, right: 30, top: 0, bottom : 15),

              child: Text(
                  " Are you a seeker or a donor?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    
                   ),
                  textAlign: TextAlign.center,
                
                ),
            ),



Container(    //this container has the button "I'm a seeker"
            child: Row(  //in this row we created 2 columns to add two buttons
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                Column(
                  children: [
                    Container(
                      width: 180,
                      height: 50,
                      child: ElevatedButton(
                        child: Text(
                          'I\'m a seeker',
                          style: TextStyle(fontSize: 25),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(    //this container has the button "I'm a donor"
                      width: 180,
                      height: 50,
                      child: ElevatedButton(
                        child: Text(
                          'I\'m a donor',
                          style: TextStyle(fontSize: 25),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ], //children
            ),
          ),


            Container(   //this container has the text 'Description section'
              color: primaryColor,
              height: 30,
              width: double.infinity,
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 0,top: 20),

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
          
          Container(   //This container has the description of the app
              color: primaryColor,
              height: 140,
              width: double.infinity,
              margin: EdgeInsets.only(top:0, right: 30, left: 30, bottom: 30),
              child: SingleChildScrollView(
                child: Text(
                  " This is the description box \n This is the description box \n This is the description box \n This is the description box \n This is the description box \n This is the description box \n This is the description box \n This is the description box \n  ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                ),
              ),
            ),

          
          ], //children
        ),
      ),
    );
  }
}
