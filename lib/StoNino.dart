import 'dart:math';
import 'package:flutter/material.dart';
import 'package:final_app/MyDashboard.dart';

class StoNino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.yellow.shade100),
      home: StoNinoHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StoNinoHome extends StatefulWidget {
  @override
  State<StoNinoHome> createState() => _StoNinoHomeState();
}

class _StoNinoHomeState extends State<StoNinoHome> {
  final List<String> triviaList = [
    "Sto. Niño, South Cotabato is also known as the 'Gateway to the Land of the T'boli' because of its proximity to the T'boli communities and their rich cultural heritage",
    "The town of Sto. Niño was founded in 1957 and was named after the Santo Niño (Child Jesus), who is the town's patron saint. The Catholic devotion to the Santo Niño is central to the town’s religious life and is celebrated annually with a fiesta, featuring masses, processions, and other festivities.",
    "Sto. Niño has been recognized for promoting and preserving the traditional T'boli crafts, such as the famous T'nalak fabric. This handwoven cloth, made from abaca fibers, is dyed using traditional methods and often features intricate patterns with deep cultural meanings.",
    "Sto. Niño is strategically located between General Santos City and the Lake Sebu area, making it a gateway town for travelers. It serves as a transit point for those heading to Lake Sebu for eco-tourism or other parts of the province for agricultural business and trade."
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
          'Sto. Niño',
          style: TextStyle(
            fontFamily: 'Roboto',
          ),
        ),
        backgroundColor: Colors.yellow,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => MyDashboard(),
              ),
            );
          },
        ),
      ),
      body:Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    colors: [Colors.yellow.shade100, Colors.orange.shade200],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    ),
    ),
    child:  SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Card(
              color: Colors.yellow.shade300,
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Sto. Niño',
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
                        child: Image.asset(
                          'assets/images/stonino.jpg',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    // Use Text instead of Text.rich
                    Center(
                      child: Text(
                        "Sto. Niño is a municipality located in the southern part of South Cotabato province,  Mindanao, and it was formerly a part of the municipality of Tampakan until it was established as a separate municipality in 1980.\n\n"
                            "Sto. Niño is known for its scenic natural attractions, including Lake Holon, a pristine crater lake located at the peak of Mt. Melibato, and the Seven Falls of Lake Sebu, a series of seven cascading waterfalls located in the nearby town of Lake Sebu.\n\n"
                            "The economy of Sto. Niño is primarily based on agriculture, with the production of rice, corn, and various fruits and vegetables being the major sources of income for the people of the town.\n\n"
                            "Sto. Niño, is a home to diverse and smaller populations of T'boli, B'laan, Manobo, and Tagakaolo peoples.\n",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
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
                              "Shop for local handicrafts - Sto. Niño is known for its traditional crafts, such as T'boli brassware, woven fabrics, and beadwork. Visitors can shop for these unique and beautiful handicrafts at local markets and shops.\n\n",
                            ),
                            TextSpan(
                              text:
                              "Lake Holon - This pristine crater lake is a must-visit destination for nature lovers and adventure seekers. You can go trekking to the lake's peak, which offers breathtaking views of the surrounding landscape or go kayaking or swimming in the cool, clear waters of the lake.\n\n",
                            ),
                            TextSpan(
                              text:
                              "The Seven Falls of Lake Sebu - The Seven Falls are a series of seven cascading waterfalls located in the nearby town of Lake Sebu. Visitors can take a boat tour to see the falls up close, go zip-lining over them, or simply enjoy a picnic by the scenic waterfalls.\n\n",
                            ),
                            TextSpan(
                              text:
                              " Sto. Niño Parish Church - The town's main church is a beautiful example of Spanish colonial architecture and features intricate carvings and decorations. It is a popular destination for religious pilgrims and tourists alike.\n",
                            ),
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