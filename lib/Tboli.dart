import 'dart:math';
import 'package:flutter/material.dart';
import 'package:final_app/MyDashboard.dart';

class Tboli extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.yellow.shade100),
      home: TboliHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TboliHome extends StatefulWidget {
  @override
  State<TboliHome> createState() => _TboliHomeState();
}

class _TboliHomeState extends State<TboliHome> {
  final List<String> triviaList = [
    "The T'boli people are renowned for their T'nalak, a hand-woven fabric made from abaca fibers. The intricate designs are often inspired by the weaver’s dreams or visions and hold cultural and spiritual significance.",
    "The T'boli people have their own language, also called T'boli, which is part of the larger South Philippine language family. It plays a crucial role in maintaining their cultural identity.",
    "The T'boli people have a rich tradition of music and dance, with distinctive instruments like the Kegat (a traditional drum) and Kudyapi (a two-stringed instrument) playing a central role in cultural celebrations.",
    "The T'boli believe in a spirit world and have a deep connection to nature. Their practices, including rituals and offerings, are often performed to honor spirits, protect the community, and ensure a good harvest."
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
          "T'boli",
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
                          "T'boli",
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
                            'assets/images/tboli.JPG',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // Use Text instead of Text.rich
                      Center(
                        child: Text(
                          "The T'boli are an indigenous group native to South Cotabato in the Philippines, renowned for their rich culture, including vibrant clothing, music, and dances.\n\n"
                          "They are skilled weavers, best known for producing T'nalak, a handwoven fabric made from abaca fibers, which holds cultural significance and is used in clothing, blankets, and decorations.\n\n"
                          "The T'boli people have a deep connection with nature, practicing sustainable agriculture, including rice and banana farming, as well as fishing and hunting.\n\n"
                          "They are also celebrated for their hospitality, welcoming tourists and sharing their traditions. To preserve their heritage, the T'boli have cultural centers and museums, like the Kule Museum in Surallah.\n\n"
                          "The T'boli people's history is deeply tied to their ancestral lands in South Cotabato’s mountains and forests. Oral tradition traces their migration to the region from other parts of Mindanao in the early 1600s, with many settling around Lake Sebu and forming their own communities.\n\n"
                          "Over time, the T'boli developed a unique culture and set of traditions rooted in their connection to nature and agriculture, which continue to be practiced today.\nDuring the American colonial period in the early 1900s, they faced pressures to adopt Western agricultural practices and values but resisted, preserving their customs.\n"
                          "In the 1960s, a government resettlement program brought settlers to the Lake Sebu area, threatening the T'boli way of life.\nThey fought for their rights to their ancestral lands, continuing to protect their cultural heritage.\n\n"
                          "Overall, the T'boli are an integral part of South Cotabato's cultural identity, with their customs and traditions continuing to thrive today.\n\n",
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
                        child: Text(
                          "Visit Lake Sebu – Surrounded by mountains, Lake Sebu is a picturesque destination perfect for boat rides, scenic views, and experiencing the rich T'boli culture.\n\n"
                          "Explore T'boli Villages – Several T'boli villages around Lake Sebu offer a chance to immerse in the local culture, where visitors can see traditional homes, hand-woven textiles, and learn about T'boli customs.\n\n"
                          "Visit the Kule Museum – Located in Surallah, the Kule Museum showcases the traditional clothing and artifacts of the T'boli people, providing a great opportunity to learn about their history and culture.\n\n"
                          "Try T'boli Cuisine – Experience unique and flavorful T'boli dishes like tilapia cooked in bamboo, T'nalak rice cakes, and lechon manok (roast chicken).\n\n"
                          "Go on a Trek – The T'boli ancestral lands offer diverse landscapes, including mountains, forests, and waterfalls, making trekking an ideal way to enjoy the area's natural beauty.\n\n"
                          "Buy T'nalak – T'nalak, a hand-woven fabric made from abaca fibers, is a unique T'boli craft, perfect as a souvenir while supporting the local community.\n",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            color: Colors.black,
                          ),
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
