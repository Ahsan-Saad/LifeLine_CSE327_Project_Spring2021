import 'package:flutter/material.dart';
import 'colors.dart';
import 'screens/welcomeScreen.dart';

void main() => runApp(Lifeline());

class Lifeline extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Lifeline> {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //to remove debug tag on top
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home:WelcomeScreen(),
    );
  }
}
