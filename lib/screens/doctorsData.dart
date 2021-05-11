import 'package:flutter/material.dart';

class DoctorsData extends StatelessWidget {
  String name;
  String location;
  String phone;
  String workHour;
  DoctorsData(this.name, this.location, this.phone, this.workHour);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              //logo
              Image.asset(
                'images/profilePic.png',
                fit: BoxFit.contain,
                height: 200,
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 290,
                height: 200,
                color: Colors.grey,
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text(name),
                    ),
                    ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text(location),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text(phone),
                    ),
                    ListTile(
                      leading: Icon(Icons.watch),
                      title: Text(workHour),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
