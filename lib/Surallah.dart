import 'dart:math';
import 'package:flutter/material.dart';
import 'package:final_app/MyDashboard.dart';

class Surallah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.yellow.shade100),
      home: SurallahHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SurallahHome extends StatefulWidget {
  @override
  State<SurallahHome> createState() => _SurallahHomeState();
}

class _SurallahHomeState extends State<SurallahHome> {
  final List<String> triviaList = [
    "Surallah is celebrated as the 'Land of the Dreamweavers' in honor of the T'boli tribe and their creation of t'nalak, a traditional handwoven fabric inspired by dreams.",
    "The Tri-People Monument in Surallah symbolizes the peaceful unity and coexistence of the T'boli, Christian settlers, and Muslim communities in the area.",
    "Surallah’s bustling public market serves as a key trading center where local farmers sell a variety of fresh fruits and vegetables, making it one of the busiest markets in South Cotabato.",
    "Surallah serves as the main entry point to Lake Sebu, a top tourist spot famous for its majestic waterfalls, eco-tourism adventures, and rich indigenous culture.",
    "Surallah participates in the T’nalak Festival, a vibrant celebration of South Cotabato’s culture, featuring lively street dances, traditional music, and costumes inspired by the T'boli people",
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
          'Surallah',
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
                          'Surallah',
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
                            child: Image.asset('assets/images/surallah.jpg',
                                fit: BoxFit.contain)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text.rich(
                        TextSpan(
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              color: Colors.black,
                            ),
                            text:
                                'Surallah is a municipality in South Cotabato, Philippines, nestled in the Allah Valley and bordered by the towns of Tboli, Banga, and Norala.\n',
                            children: [
                              TextSpan(
                                text:
                                    "\nSurallah's economy is largely driven by agriculture, with rice, corn, and bananas as the primary crops.",
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ]),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        "The municipality also boasts a thriving livestock industry, raising cattle, swine, and poultry for meat production.",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        "\nSurallah may not be a well-known tourist destination, but it still has plenty to offer for visitors who want to explore the area.",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Center(
                        child: Text(
                          '\nTop Relaxation Spots\n',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Center(
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
                                      "Explore the Seven Falls: Discover seven stunning cascading waterfalls in the picturesque Lake Sebu area. Enjoy a scenic trek to witness the breathtaking beauty of these natural wonders.\n\n",
                                ),
                                TextSpan(
                                  text:
                                      "Visit Lake Sebu: Renowned for its serene beauty, Lake Sebu offers activities like boat rides to enjoy the stunning scenery or zip-lining for an exhilarating adventure.\n\n",
                                ),
                                TextSpan(
                                  text:
                                      "Tour the Kule Museum: Located in Surallah's town proper, this community museum showcases traditional clothing and artifacts of the T'boli tribe, providing insights into local culture and heritage.\n",
                                ),
                              ]),
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
