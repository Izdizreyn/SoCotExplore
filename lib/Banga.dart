import 'dart:math';
import 'package:flutter/material.dart';
import 'package:final_app/MyDashboard.dart';

class Banga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.yellow.shade100),
      home: BangaHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BangaHome extends StatefulWidget {
  @override
  State<BangaHome> createState() => _BangaHomeState();
}

class _BangaHomeState extends State<BangaHome> {
  final List<String> triviaList = [
    "Banga's Name Origin: The name 'Banga' is derived from the Maguindanao word 'bángà' meaning 'jar', referring to the traditional use of jars in the area, especially for storing food and water.",
    "Banga is known for its rich cultural heritage and is home to various indigenous groups, including the T'boli and B'laan tribes, who have a strong presence and influence in the area, with distinct customs, dances, and crafts.",
    "During the Spanish era, Banga was part of a larger settlement area within the region, contributing to the historical developments that shaped South Cotabato as a whole.",
    "The town is an agricultural hub, known particularly for its production of crops like rice, corn, and various fruits, contributing significantly to the economy of South Cotabato.",
    "Banga hosts cultural events, such as the T’boli Cultural Festival, which celebrates the traditions, dances, and crafts of the indigenous T'boli people, showcasing their colorful handwoven fabrics and brass jewelry.",
  ];

  late String selectedTrivia;

  @override
  void initState() {
    super.initState();
    selectedTrivia = triviaList[Random().nextInt(triviaList.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Banga',
          style: TextStyle(
            fontFamily: 'Roboto',
          ),
        ),
        backgroundColor: Colors.yellow,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => MyDashboard()));
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.yellow.shade100, Colors.orange.shade200],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Card(
                color: Colors.yellow.shade300,
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'Banga',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        child: Center(
                            child: Image.asset('assets/images/banga.png',
                                fit: BoxFit.contain)),
                      ),
                      SizedBox(height: 20),
                      const Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            color: Colors.black,
                          ),
                          text:
                              'Banga is home to various indigenous groups such as the Tboli, B`laan, and Maguindanaoan, who have inhabited the area for centuries.',
                          children: [
                            TextSpan(
                              text:
                                  ' A landlocked municipality in the coastal province of South Cotabato.',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.justify, // Justified text
                      ),
                      Text(
                        '\nBanga is a picturesque and agriculture-rich municipality in South Cotabato, known for its lush rice fields, which have earned it the title "Rice Bowl of South Cotabato."',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify, // Justified text
                      ),
                      Text(
                        '\nThe town is dotted with scenic landscapes and is home to the serene Lake Banga, a popular spot for fishing and quiet relaxation.',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify, // Justified text
                      ),
                      Text(
                        '\nBanga is also celebrated for its vibrant Pasundayag Festival, held annually to honor the town’s agricultural heritage with colorful street dances, cultural displays, and exhibitions of locally grown produce. \nThis warm and welcoming community reflects the blend of modern progress and deep-rooted cultural traditions that make South Cotabato unique.\n\n',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Center(
                        child: Text(
                          'Top Relaxation Spots\n',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Center(
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    "Banga Harvest Festival: An annual event in May with parades, street dances, and cultural performances.\n\n",
                              ),
                              TextSpan(
                                text:
                                    "South Cotabato Sports Complex: A modern facility offering sports and recreational activities.\n\n",
                              ),
                              TextSpan(
                                text:
                                    "Lake Sebu: A picturesque lake with boat tours and cultural insights from the T'boli people.\n\n",
                              ),
                              TextSpan(
                                  text:
                                      "Local Cuisine: Enjoy delicious food, including grilled seafood, lechon, and rice dishes.\n")
                            ],
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Center(
                          child: Text(
                            'Did You Know?',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Center(
                          child: Text(
                            selectedTrivia,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
