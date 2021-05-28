import 'package:flutter/material.dart';
import 'package:lifeline/colors.dart';
import 'package:lifeline/screens/dashboardScreen.dart';
import 'loginScreen.dart';
// import 'package:lifeline/colors.dart';

class SigninScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text("Sign in Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 1.0),
              child: Center(
                child: Container(
                  width: 350,
                  height: 400,
                  /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                  child: Image.asset('images/everylife.png'),
                ),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            // FlatButton(
            //   onPressed: (){
            //     //TODO FORGOT PASSWORD SCREEN GOES HERE
            //   },
            //   child: Text(
            //     'Forgot Password',
            //     style: TextStyle(color: Colors.blue, fontSize: 15),
            //   ),
            // ),
            Container(
              margin: EdgeInsets.only(top: 15),
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DashboardScreen(),
                    ),
                  );
                },
                child: Text(
                  'Sign in',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text('Already have an account?'),
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
              child: Text(
                'Log in',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );

    // return Scaffold(
    //   appBar: AppBar(
    //     //appbar has logo, sign in, log in
    //     backgroundColor: primaryColor,
    //     title: Container(
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.end,
    //         children: [
    //           Column(
    //             children: [
    //               //logo
    //               Image.asset(
    //                 'assets/logo.png',
    //                 fit: BoxFit.contain,
    //                 height: 32,
    //               ),
    //             ],
    //           ),
    //         ], //children
    //       ),
    //     ),
    //   ),
    //   body: Column(
    //     children: [
    //       Container(

    //           width: double.infinity,
    //           height: 400,
    //           child: Stack(
    //             alignment: Alignment.center,
    //             children: <Widget>[
    //               Positioned(child: Image.asset("assets/logo.png"),

    //               )
    //             ],
    //           )),
    //     ],
    //   ),
    // );
  }
}
