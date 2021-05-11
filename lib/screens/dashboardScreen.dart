import 'package:flutter/material.dart';
import 'package:lifeline/colors.dart';
import 'package:lifeline/screens/doctorslistScreen.dart';
// import 'package:lifeline/screens/loginScreen.dart';
import 'package:lifeline/screens/welcomeScreen.dart';
// import 'package:lifeline/demoButton.dart'; //demo button is not available in laptop
import 'DoctorsListScreens/heartSp_List.dart';
import 'DoctorsListScreens/diabeteseSp_list.dart';
import 'DoctorsListScreens/kidneySp_list.dart';
import 'DoctorsListScreens/LiverSp_list.dart';
import 'DoctorsListScreens/EyeSp_list.dart';
import 'DoctorsListScreens/skinSp_list.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //appbar has logo, sign in, log in
        backgroundColor: primaryColor,
        automaticallyImplyLeading:
            false, //by this we  removed the back button in appbar. user will use logout to  go back to welcome screen.
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
                    margin: EdgeInsets.only(left: 90),
                    //this container has log out button
                    width: 80,
                    child: ElevatedButton(
                      child: Text(
                        'log out',
                        style: TextStyle(fontSize: 15),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => WelcomeScreen()));
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
            color: Colors.blueGrey,
            height: 30,
            width: double.infinity,
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 0, top: 20),

            child: Text(
              "Emergency Covid Section:",
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
            color: Colors.blueGrey.shade400,
            height: 300,
            width: double.infinity,
            margin: EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 30),
            child: SingleChildScrollView(
              child: Text(
                "   \n phone number 1 \n phone number 2 \n phone number 3 \n phone number 4 \n phone number 5 \n phone number 6 \n phone number 7 \n phone number 8 \n phone number 9 \n phone number 10 \n phone number 11 \n phone number 12",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            //this container has the button "I'm a seeker"
            child: Row(
              //in this row we created 2 columns to add two buttons
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      width: 200,
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: ElevatedButton(
                          child: Text(
                            'Heart \nSpecialists',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return HeartSpList();
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
                      height: 60,

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: ElevatedButton(
                          child: Text(
                            'Diabetes Specialists',
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DiabeteseSp_List();
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
            margin: EdgeInsets.only(top: 10),
            //this container has the button "I'm a seeker"
            child: Row(
              //in this row we created 2 columns to add two buttons
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      width: 200,
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: ElevatedButton(
                          child: Text(
                            'Kidney \nSpecialists',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return KidneySp_list();
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
                      height: 60,

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: ElevatedButton(
                          child: Text(
                            'Liver \nSpecialists',
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return LiverSp_list();
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
            margin: EdgeInsets.only(top: 10),
            //this container has the button "I'm a seeker"
            child: Row(
              //in this row we created 2 columns to add two buttons
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      width: 200,
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: ElevatedButton(
                          child: Text(
                            'Eye \nSpecialists',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return EyeSp_List();
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
                      height: 60,

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: ElevatedButton(
                          child: Text(
                            'Skin \nSpecialists',
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return SkinSp_list();
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

          // Container(  //the next two containers are jsut for test, might delete later
          //   margin: EdgeInsets.only(top: 10),
          //   //this container has the button "I'm a seeker"
          //   child: Row(
          //     //in this row we created 2 columns to add two buttons
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       Column(
          //         children: [
          //           Container(
          //             width: 200,
          //             height: 60,
          //             child: ClipRRect(
          //               borderRadius: BorderRadius.circular(15),
          //               child: ElevatedButton(
          //                 child: Text(
          //                   'Eye \nSpecialists',
          //                   style: TextStyle(
          //                     fontSize: 20,
          //                   ),
          //                   textAlign: TextAlign.center,
          //                 ),
          //                 onPressed: () {},
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //       Column(
          //         children: [
          //           Container(
          //             //this container has the button "I'm a donor"
          //             width: 200,
          //             height: 60,

          //             child: ClipRRect(
          //               borderRadius: BorderRadius.circular(15),
          //               child: DemoButton((){}, 'demo specialist')
          //             ),
          //           ),

          //         ],
          //       ),
          //     ], //children
          //   ),
          // ),
        ],
      ),
    );
  }
}
