import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    radius: 50,
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                        child: Text(
                          "Mohd Jasir Khan",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Row(
                          children: [
                            Container(
                                child: InkWell(
                              child: Icon(Icons.link),
                            )),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                                child: InkWell(
                              child: Icon(Icons.link),
                            )),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                                child: InkWell(
                              child: Icon(Icons.link),
                            )),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0,10,0,0),
                        child: Text(
                          "Followers : 1M ",
                          style: TextStyle(fontSize: 15, color: Colors.white),
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
                    ),
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
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ),
          ],
        ),
      );
  }
}