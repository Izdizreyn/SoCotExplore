import 'dart:math';
import 'package:flutter/material.dart';
import 'package:final_app/MyDashboard.dart';

class Tampakan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.yellow.shade100),
      home: TampakanHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TampakanHome extends StatefulWidget {
  @override
  State<TampakanHome> createState() => _TampakanHomeState();
}

class _TampakanHomeState extends State<TampakanHome> {
  final List<String> triviaList = [
    "Tampakan hosts one of Southeast Asia's largest undeveloped copper and gold reserves, making it a focal point for mining interests.",
    "The town is renowned for its stunning natural beauty, featuring rolling hills and picturesque mountain ranges that attract adventurers and nature lovers.",
    "The Blaan people, who form a significant part of Tampakan’s population, continue to preserve their rich culture through traditional attire, intricate beadwork, and indigenous music.",
    "Agriculture plays a vital role in Tampakan’s economy, with the municipality being a key producer of crops such as corn, rice, and coconuts.",
    'The name "Tampakan" comes from the term “tampak,” which means an elevated area, a nod to the town`s hilly and mountainous landscape.',
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
          'Tampakan',
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
                          'Tampakan',
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
                            child: Image.asset('assets/images/tampakan.jpg',
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
                                "Tampakan, a municipality in South Cotabato, is nestled at the base of Mt. Matutum and is home to a variety of ethnic communities, including the T'boli, B'laan, and Maguindanao peoples.\n",
                            children: [
                              TextSpan(
                                text:
                                    "\nThe area is abundant in natural resources such as minerals, forests, and water systems. Its economy thrives primarily on agriculture and mining activities.",
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ]),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        'The name Tampakan is derived from the B`laan word "tampak," which means "mine." The area is known for its rich mineral deposits, including copper and gold, which have attracted mining companies to the area.',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        '\nAside from its mineral resources, Tampakan is also known for its natural beauty. The town is surrounded by mountains and forests and is home to several bodies of water, including Lake Sebu and the Seven Falls.',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        "\nThe T'boli, Tampakan's largest ethnic group, are renowned for their vibrant traditions and cultural richness. They are famous for their vivid attire, detailed beadwork, and traditional music. Their distinctive language and beliefs are deeply rooted in their harmonious connection with nature.",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        "\nTampakan has faced environmental and social challenges from mining, with some locals opposing it due to its impact on nature and livelihoods. Despite this, it remains a culturally vibrant and unique destination in the Philippines.",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        "\nIt is home to the Tampakan Copper-Gold Project, one of the largest undeveloped copper-gold deposits in Southeast Asia. The project is expected to generate significant economic benefits for the municipality and the province as a whole.",
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
                                      "Tampakan Copper-Gold Project: Located in the mountains of Tampakan, this massive mining project holds one of the world’s largest undeveloped copper and gold deposits, with potential to generate billions in revenue.\n\n",
                                ),
                                TextSpan(
                                  text:
                                      "Mt. Matutum – A dormant volcano near Tampakan, Mount Matutum is a favorite among hikers and climbers for its picturesque trails and panoramic views of forests and nearby mountains.\n\n",
                                ),
                                TextSpan(
                                  text:
                                      "Trekking and Hiking – Tampakan is surrounded by mountains and trails like Mount Parker and the Tampakan-Tupi route, attracting trekking and hiking enthusiasts.\n",
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
