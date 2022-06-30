import 'package:flutter/material.dart';
import './widgets/login.dart';
import './widgets/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HashConnect',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff1F2937),
      // appBar: AppBar(
      //   title: Text("HashConnect"),
      // ),
      body: Login(),
    );
  }
}
