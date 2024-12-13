import 'dart:math';
import 'package:flutter/material.dart';
import 'package:final_app/MyDashboard.dart';

class Tupi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.yellow.shade100),
      home: TupiHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TupiHome extends StatefulWidget {
  @override
  State<TupiHome> createState() => _TupiHomeState();
}

class _TupiHomeState extends State<TupiHome> {
  final List<String> triviaList = [
    'Tupi is known for its historical background, particularly its role in the development of agriculture in the region. It is often called the "Rice Bowl" of South Cotabato due to its large rice fields.',
    "The town's name, Tupi, is believed to be derived from the Tupi River, which flows through the area. The river has played a major role in the town’s agricultural development.",
    "Tupi is home to various indigenous groups, particularly the T'boli and B'laan communities. The cultural influence of these groups is evident in the town's traditions, festivals, and crafts.",
    'Tupi hosts the "Tupi Kalilangan Festival", a cultural celebration that honors the rich heritage and tradition of the town, showcasing its agricultural products, indigenous dances, and music.'
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
          'Tupi',
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
                          'Tupi',
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
                            'assets/images/tupi.jpg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // Use Text instead of Text.rich
                      Center(
                        child: Text(
                          "Tupi is a municipality in South Cotabato, Philippines, primarily driven by agriculture, with coffee, rubber, durian, and lanzones being its main products.\nIn recent years, there has been increasing interest in tourism due to the town's natural attractions, such as waterfalls, hot springs, and scenic mountains. Small-scale businesses, retail shops, eateries, and service providers also contribute to the local economy, alongside the Alcantara and Sons (ALSONS) agricultural company, a major employer in the area.\n\n"
                          "The history of Tupi dates back to pre-colonial times when it was inhabited by indigenous groups like the B'laan and T'boli, who relied on farming, hunting, and fishing.\nUnder Spanish rule, Tupi became part of the colonial administration, and this influence is seen in structures like the Catholic Church of Tupi, built in the 1800s.\n\n"
                          "Tupi was officially declared a municipality in the early 1900s, and its agricultural focus grew, particularly in coffee, rubber, and fruit production. The establishment of ALSONS in the mid-20th century introduced modern farming techniques and spurred economic growth.\n\n"
                          "Today, Tupi boasts a population of over 60,000 and celebrates its cultural heritage through festivals and events, while continuing to attract visitors with its natural beauty and rich history.\n\n",
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
                                    'Visit the Fruit Park in Tupi: Tupi, known as the "fruit basket" of South Cotabato, is home to large plantations of tropical fruits like bananas and pineapples. At the Tupi Fruit Park, you can enjoy fresh, affordable fruits along the National Highway, perfect for satisfying your fruit cravings.\n\n',
                              ),
                              TextSpan(
                                text:
                                    "The Land of Praise: Magsangyaw Land of Praise in Tupi offers a spiritual retreat with panoramic views of green mountains. The highlight is three towering crosses that symbolize protection. The site is accessible via a 15-20 minute hike from the parking area. The best times to visit are early morning or late afternoon to avoid the heat.\n\n",
                              ),
                              TextSpan(
                                text:
                                    "Strawberry and Guyabano Farm (SG Farm): Located in Tupi, SG Farm is a popular stop where visitors can explore the farm and enjoy fresh produce like strawberries and guyabano, especially before the Christmas season.\n\n",
                              ),
                              TextSpan(
                                text:
                                    "Mariano's Blooming Agri-Tourism Park: Mariano's Blooming Petals, a 13-hectare agri-tourism park in Tupi, is famous for its sunflower fields. Visitors should set aside at least two hours to explore the park fully. You can easily reach the park by bus from Marbel and a tricycle ride from Tupi.\n",
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
