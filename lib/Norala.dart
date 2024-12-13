import 'dart:math';
import 'package:flutter/material.dart';
import 'package:final_app/MyDashboard.dart';

class Norallah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.yellow.shade100),
      home: NorallahHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NorallahHome extends StatefulWidget {
  @override
  State<NorallahHome> createState() => _NorallahHomeState();
}

class _NorallahHomeState extends State<NorallahHome> {
  final List<String> triviaList = [
    "Norallah is often referred to as the “Green Oasis of South Cotabato” due to its lush, fertile land and abundant natural resources. The town is blessed with scenic views, rich agricultural land, and a cooler climate, making it a hidden gem for nature lovers and tourists alike.",
    "Located in the highland region of South Cotabato, Norallah enjoys a relatively cooler climate compared to other towns in the province. This is due to its elevation, which is around 500 meters above sea level.",
    "The name 'Norallah' comes from the T'boli language, where 'No. means water and 'Rallah' means place. This is a reference to the numerous rivers and streams that flow through the area. Norallah is a rural area with a deep connection to water resources, which are essential for agriculture and the daily lives of its residents.",
    "Norallah is strategically located and serves as a gateway to other key areas in South Cotabato, such as Lake Sebu and T'boli. Visitors often pass through Norallah on their way to other destinations in the region, making it a convenient stop to enjoy the scenic beauty and tranquility of the area."
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
          'Norallah',
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
                          'Norallah',
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
                            'assets/images/norala.jpg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // Use Text instead of Text.rich
                      Center(
                        child: Text(
                          "Norala is a third-class municipality situated in the central part of South Cotabato province and is known for its agricultural industry, natural beauty, and cultural heritage. The town is known for its vast rice fields and coconut plantations, which are the primary sources of livelihood for the local residents.\n\n"
                          "The town celebrates its annual fiesta in honor of the town's patron saint, St. Isidore the Farmer, on May 15. The fiesta features colorful parades, street dances, and various cultural and religious activities.\n\n"
                          "Norala is also known for its natural beauty. The town is home to several waterfalls, including the Mambucal Falls, which is a popular destination for hikers and nature enthusiasts. \n\n"
                          "In addition to the T’boli people, Norallah is home to other indigenous groups, such as the B’laan and T’boli-Blaan communities. These groups continue to practice traditional crafts, rituals, and customs, which contribute to the cultural fabric of the town.\n",
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
                                    "Mambucal Falls - Take a hike and enjoy the natural beauty of Mambucal Falls. You can swim in the cool waters or have a picnic with your family and friends.\n\n",
                              ),
                              TextSpan(
                                text:
                                    "Ancestral House of General Paulino Santos - Learn about the history and culture of Noralla by visiting the ancestral house of General Paulino Santos. The house is a well-preserved example of traditional architecture and is open to the public for viewing.\n\n",
                              ),
                              TextSpan(
                                  text:
                                      "Mt. Parker - For adventure seekers and nature lovers, Mt. Parker is a must-visit destination in Norallah. This protected landscape is home to a wide variety of flora and fauna and is perfect for trekking and bird watching. The mountain offers spectacular panoramic views of the surrounding valleys and lowlands, making it a great spot for hiking and photography. It is also home to indigenous communities, making it an excellent place to learn about local traditions.\n\n"),
                              TextSpan(
                                text:
                                    "Malakanding River - The Malakanding River is an important waterway in Norallah, providing water for irrigation and serving as a recreational area for locals and visitors alike. The river is a tranquil spot for picnicking, boating, and fishing. The surrounding natural beauty makes it a great destination for those looking to experience the calm and peaceful side of Norallah’s countryside.\n",
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
