import 'dart:math';
import 'package:flutter/material.dart';
import 'package:final_app/MyDashboard.dart';

class SoCot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.yellow.shade100),
      home: SoCotHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SoCotHome extends StatefulWidget {
  @override
  State<SoCotHome> createState() => _SoCotHomeState();
}

class _SoCotHomeState extends State<SoCotHome> {
  final List<String> triviaList = [
    "South Cotabato is home to the enchanting Lake Sebu, a renowned tourist spot surrounded by scenic landscapes, waterfalls, and the T'boli Indigenous community known for their colorful culture and handwoven t'nalak fabric.",
    "South Cotabato celebrates the T'nalak Festival every July to honor the province's culture and the art of weaving, featuring vibrant street dances, parades, and displays of t'nalak, a unique cloth made by the T'boli people.",
    "South Cotabato is a major producer of pineapples in the Philippines. Polomolok, in particular, is famous for its pineapple plantations, managed by Dole Philippines, making it a key player in the fruit export industry.",
    "The Mount Matutum, an active volcano in South Cotabato, is a popular hiking destination and an important ecological zone, home to diverse flora and fauna, including the endangered Philippine eagle?",
    "The South Cotabato is known for its vibrant diversity of indigenous groups, including the T'boli, B'laan, and Maguindanaoan people, each with unique cultural traditions, languages, and artisanal crafts?",
    "The South Cotabato's Seven Falls, located in Lake Sebu, offers zipline rides across stunning waterfalls, making it one of the highest and longest ziplines in Asia?",
    "General Santos City, close to South Cotabato, is considered the 'Tuna Capital of the Philippines' and hosts an annual Tuna Festival to celebrate its thriving fishing industry?",
    "The Baras Bird Sanctuary in Tacurong City, just bordering South Cotabato, provides a safe haven for thousands of migratory birds, making it a favorite spot for birdwatchers and nature enthusiasts?"
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
          'South Cotabato',
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
          // Makes the entire content scrollable
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Card(
                color: Colors.yellow.shade300,
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          'South Cotabato',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        child: Image.asset(
                          'assets/images/aaa.png',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Text.rich(
                          textAlign: TextAlign.justify,
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              color: Colors.black,
                            ),
                            text:
                                'South Cotabato, officially the Province of South Cotabato, is a province in the Philippines located in the ',
                            children: [
                              TextSpan(
                                text: 'SOCCSKSARGEN',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text:
                                    ' Region in Mindanao. \n\nIts capital is Koronadal City.',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                ),
                              ),
                              TextSpan(
                                text:
                                    ' Known as the “Land of the Dreamweavers”, South Cotabato is home to the T’boli tribe, known for their weaving art that bases its patterns on their dreams. Lakes, waterfalls, vast plantations and well-preserved tradition, South Cotabato opens the doors to the picturesque southern region of Mindanao.',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                ),
                              ),
                              TextSpan(
                                text:
                                    '\n\nThe city of General Santos is commonly grouped with the province, although it is administratively independent due to its distinction as highly urbanized city',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.0),
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
