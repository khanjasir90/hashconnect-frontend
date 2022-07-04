import 'package:flutter/material.dart';
import 'package:swiping_card_deck/swiping_card_deck.dart';
import 'dart:math' as math;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CardSwipe extends StatefulWidget {
  @override
  State<CardSwipe> createState() => _CardSwipeState();
}

class _CardSwipeState extends State<CardSwipe> {

  @override
  Widget build(BuildContext context) {
    final SwipingCardDeck deck = SwipingCardDeck(
      cardDeck: <Card>[
        Card(
            color: Colors.white,
            // child: const SizedBox(height: 600, width: 300,)
            child: Container(
              padding: EdgeInsets.all(8.0),
              height: 530, width: 320,
              child: Column(
                children: [
                  //SizedBox(height: 300),
                  Container(                    
                    decoration: BoxDecoration(                                          
                      border: Border.all(width: 2,
                        color: Color(0xff1F2937),
                      ),                     
                    ),
                    child: Image(
                      
                      image: AssetImage('assets/luffy.jpeg'),
                      fit: BoxFit.contain,
                      height: 200,  
                      width: 270,
                    )
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                          child: Text(
                            "Revue - Sendy sync: Railway Hosting",
                            style: TextStyle(
                                color: Colors.black,                                
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold),
                          ),
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                          child: Text(
                            "TL;DR: Don't use Boolean comparison for side effect functions. Problems Readability Side Effects Solutions Convert short circuit into IFs Context Smart programmers like to write hacky and obscu",
                            style: TextStyle(
                                color: Colors.black,                                
                                fontSize: 13,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold),
                          ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/headshot.jpeg'),
                        radius: 35,
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 15, 0, 0),
                            child: Text(
                              "Mohd Jasir Khan",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold),
                            ),
                          ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 23, 0),
                          child: Text(
                            "Jun 29, 2022",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                  ),
                ],                          
              ),              
            ),              
        ),
      ],
      onDeckEmpty: () => debugPrint("Card deck empty"),
      onLeftSwipe: (Card card) => debugPrint("Swiped left!"),
      onRightSwipe: (Card card) => debugPrint("Swiped right!"),
      cardWidth: 200,
      swipeThreshold: MediaQuery.of(context).size.width / 3,
      minimumVelocity: 1000,
      rotationFactor: 0.8 / 3.14,
      swipeAnimationDuration: const Duration(milliseconds: 500),
    );
    return MaterialApp(      
      title: 'HashConnect',
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
                "HashConnect",
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
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              deck,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    alignment: Alignment.bottomCenter,
                    icon: const Icon(Icons.clear),
                    iconSize: 40,
                    color: Colors.red,
                    onPressed: deck.animationActive ? null : () => deck.swipeLeft(),
                  ),
                  const SizedBox(width: 40),
                  IconButton(
                    alignment: Alignment.bottomCenter,
                    icon: const Icon(Icons.check),
                    iconSize: 40,
                    color: Colors.green,
                    onPressed: deck.animationActive ? null : () => deck.swipeRight(),
                  ),
                ],
              ), 
            ],
         ),
      ),
    ),
   );
}

// List<Card> getCardDeck() {
//     List<Card> cardDeck = [];
//     for (int i = 0; i < 1; ++i) {
//       cardDeck.add(
//         Card(
//           color: Colors.white
//             .withOpacity(1.0),
//             // child: const SizedBox(height: 600, width: 300,)
//             child: const SizedBox(height: 600, width: 300)),
//       );
//     }
//     return cardDeck;
//   }
}