import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Login extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 10.0,
                fontFamily: 'Horizon',
              ),
              child: TextLiquidFill(
                text: 'HASHCONNECT',
                waveColor: Colors.blueAccent,
                boxBackgroundColor: Color(0xff1F2937),
                textStyle: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: "ENTER USERNAME",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 3,
                            ))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "ENTER API_KEY",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 3,
                            ))),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: 400,
                    height: 50,
                    child: RaisedButton(onPressed: () {},
                      color: Colors.blue,
                      child: Text("Submit"),
                      shape: StadiumBorder(
                        side: BorderSide(color: Colors.blue, width: 2)
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
  }
}