import 'dart:math';
import 'package:flutter/material.dart';
import 'package:final_app/MyDashboard.dart';

class Gensan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.yellow.shade100),
      home: GensanHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GensanHome extends StatefulWidget {
  @override
  State<GensanHome> createState() => _GensanHomeState();
}

class _GensanHomeState extends State<GensanHome> {
  final List<String> triviaList = [
    'General Santos City is known as the "Tuna Capital of the Philippines" due to its rich fishing industry, particularly for tuna. The city has one of the largest tuna canning industries in the country and exports a significant amount of tuna globally.',
    'General Santos is the hometown of boxing legend Manny Pacquiao, considered one of the greatest pound-for-pound boxers of all time. His rise to fame brought international attention to the city.',
    'General Santos City is named after General Paulino Santos, a military leader who was instrumental in the settlement of the area. He also became the first governor of the province of South Cotabato.',
    'The beautiful Sarangani Bay, which borders General Santos City, is renowned for its crystal-clear waters and abundant marine life, making it a popular location for diving and eco-tourism.'
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
          'General Santos City',
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
                          'General Santos City',
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
                            'assets/images/gensan.jpg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // Use Text instead of Text.rich
                      Center(
                        child: Text(
                          "General Santos City, also known as GenSan, is a highly urbanized city located in the province of South Cotabato, in the southern region of the Philippines.\n\n"
                          "General Santos City was founded on September 5, 1968, by General Paulino Santos, a native of Kabuntalan, Maguindanao, who led the resettlement of Christian settlers in the area.\n\n"
                          "The city was named in honor of General Santos, who served as the first governor of the province of South Cotabato.\n\n"
                          "General Santos City has a robust agricultural sector, producing crops like coconut, corn, and banana. Additionally, the city boasts a thriving tourism industry, with key attractions such as Sarangani Island, the T'boli Weaving Center, and various beaches and resorts.\n\n"
                          "General Santos City is renowned for its lively culture and festivals. Each September, the Tuna Festival is held to honor the city's fishing industry and promote tourism. Additionally, the Kalilangan Festival is celebrated to showcase the rich cultural heritage and traditions of the indigenous communities in South Cotabato.\n",
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
                                    "Museums: The city has notable museums like the Mindanao State University Museum of Anthropology and the General Santos City Museum, which highlight its history, culture, and arts.\n\n",
                              ),
                              TextSpan(
                                text:
                                    "Nightlife: Enjoy a vibrant nightlife scene with bars and nightclubs such as Tiongson Arcade and Smuggler's Bar, offering live music and drinks.\n\n",
                              ),
                              TextSpan(
                                text:
                                    "City Tour: Explore landmarks like the GenSan City Hall, Plaza Heneral Santos, and Notre Dame of Dadiangas University through a city tour.\n\n",
                              ),
                              TextSpan(
                                  text:
                                      "Festivals: Participate in festivals like the Tuna Festival, Kalilangan Festival, and Sarangani Bay Festival, which celebrate the city's culture and traditions.\n")
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
