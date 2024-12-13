import 'dart:math';
import 'package:flutter/material.dart';
import 'package:final_app/MyDashboard.dart';

class Polomolok extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.yellow.shade100),
      home: PolomolokHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PolomolokHome extends StatefulWidget {
  @override
  State<PolomolokHome> createState() => _PolomolokHomeState();
}

class _PolomolokHomeState extends State<PolomolokHome> {
  final List<String> triviaList = [
    "Polomolok is often referred to as 'The Pineapple Capital of the Philippines' because of its large-scale production of pineapples, particularly the 'Queen' variety, which is famous for its sweetness and high quality.",
    "The town of Polomolok was founded in 1949 and is named after the B'laan word 'polomolok,' which refers to a type of tree found in the area.",
    "Polomolok is located at the base of the Mt. Matutum, an active volcano, and is considered a gateway to the nearby highland towns. This makes it an excellent place for eco-tourism, with visitors often hiking to the summit of Mt. Matutum for panoramic views of the surrounding landscape.",
    "Polomolok is home to a diverse population, including settlers from various regions in the Philippines, as well as indigenous peoples such as the B'laan tribe.The town has a rich cultural heritage that reflects both indigenous traditions and those of the migrant communities, contributing to a unique blend of practices, languages, and festivals."
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
          'Polomolok',
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
                          'Polomolok',
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
                            'assets/images/polomolok.JPG',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // Use Text instead of Text.rich
                      Center(
                        child: Text(
                          "Polomolok is a municipality located in the southern part of South Cotabato province in  Mindanao and is known for its rich agricultural resources, particularly in the production of fruits such as bananas and pineapples.\n\n"
                          "Polomolok can be traced back to the early 1900s when it was still a part of the municipality of Tupi. In 1948, Polomolok was established as a separate municipality, comprising several barangays or villages that were formerly part of Tupi.\n\n"
                          "Polomolok was primarily an agricultural town, with most of its inhabitants engaged in farming and raising livestock. The town's fertile soil and favorable climate made it an ideal location for growing crops such as bananas, pineapples, and corn, which remain major sources of livelihood for the people of Polomolok to this day.\n\n"
                          "Today, Polomolok is a thriving municipality with a population of over 160,000 people. It is known for its rich cultural heritage, natural attractions, and dynamic economy, making it a popular destination for tourists and investors alike.\n",
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
                        //diklap pud ni
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
                                text: //kani?diklap
                                    "Mt. Matutum - This majestic mountain is a popular destination for nature lovers and adventure seekers. Mt. Matutum offers several hiking trails that lead to its peak, where you can enjoy breathtaking views of the surrounding landscape.\n\n",
                              ),
                              TextSpan(
                                text:
                                    "Sapu Manok Falls - Sapu Manok Falls is one of the hidden gems of Polomolok. Located in the lush forests near Mt. Matutum, this picturesque waterfall is an excellent destination for trekking and nature photography. The falls cascade into a refreshing pool, providing visitors with the perfect spot to relax and enjoy the tranquil surroundings. It's ideal for a day of adventure combined with a peaceful escape into nature.\n\n",
                              ),
                              TextSpan(
                                  text:
                                      "Tupi-Columbio-Polomolok Watershed Forest Reserve - This vast forest reserve is home to diverse flora and fauna, including rare and endangered species of birds and animals. Visitors can go trekking, bird-watching, and camping in the forest.\n\n"),
                              TextSpan(
                                text:
                                    "Pineapple Plantations (Dole Philippines) - Polomolok is home to the largest pineapple plantation in the Philippines, operated by Dole Philippines. While the plantation itself is a working agricultural site, visitors can tour the area and learn about pineapple farming. You’ll get an up-close view of the vast fields of pineapples, the production process, and the important role this industry plays in the local economy. Pineapple products are also available for purchase.\n",
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
