import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      home: Scaffold(
        backgroundColor: Color(0xff1F2937),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(onPressed: () {
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back)),
              Text(
                "Profile",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/headshot.jpeg'),
                      radius: 50,
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                          child: Text(
                            "Mohd Jasir Khan",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Row(
                            children: [
                              Container(
                                  child: InkWell(
                                child: FaIcon(FontAwesomeIcons.github),
                              )),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                  child: InkWell(
                                child: FaIcon(FontAwesomeIcons.linkedinIn),
                              )),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                  child: InkWell(
                                child: FaIcon(FontAwesomeIcons.twitter),
                              )),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                            "Followers : 1M ",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Container(
                    padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: Text(
                      "I am a Software Engineer with all love for Backend!.",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    )),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                color: Colors.white,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Text(
                  "Mohd Jasir Khan's Blogs",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
