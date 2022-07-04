import 'package:flutter/material.dart';
import './widgets/login.dart';
import './widgets/profile.dart';
import './widgets/cardSwipe.dart';

void main() {
  runApp(MyApp());
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CardSwipe(),
      ),
    );
  }
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
      body: CardSwipe(),
    );
  }
}
