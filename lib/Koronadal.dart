import 'dart:math';
import 'package:flutter/material.dart';
import 'package:final_app/MyDashboard.dart';

class Koronadal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.yellow.shade100),
      home: KoronadalHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class KoronadalHome extends StatefulWidget {
  @override
  State<KoronadalHome> createState() => _KoronadalHomeState();
}

class _KoronadalHomeState extends State<KoronadalHome> {
  final List<String> triviaList = [
    'Koronadal City is renowned as the "Mango Capital of the Philippines" because it produces a large quantity of high-quality mangoes, particularly the "Carabao" variety, which is prized for its sweetness and smooth texture.',
    "Koronadal City was the proud host of the 1996 Palarong Pambansa (National Games), a prestigious event that gathers young athletes from all over the country. The event was held at the South Cotabato Sports Complex, one of the city's key sports venues.",
    "Koronadal City is home to the T'boli people, an indigenous group known for their rich cultural traditions and exceptional weaving skills. The T'boli Weaving Center in the city allows visitors to witness the creation of their intricate, handmade textiles.",
    "The Provincial Capitol Complex in Koronadal is not only the center of the local government but also a historic landmark. It features impressive architecture and lush gardens, offering beautiful views of the surrounding cityscape.",
    "Koronadal serves as a gateway to Lake Sebu, a popular tourist destination known for its stunning lake, waterfalls, and deep cultural heritage. Many visitors come to explore the natural beauty and experience the unique traditions of the T'boli people in the nearby area."
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
          'Koronadal City',
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
                          'Koronadal City',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),// Center the text
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        child: Center(
                          child: Image.asset(
                            'assets/images/koronadal.jpg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Text(
                          'Koronadal City is a city in South Cotabato, Philippines. It is the provincial capital and is also known as the "Mango Capital of the Philippines" due to its abundant mango production.\n\n'
                          'The city is home to various cultural and historical landmarks, such as the South Cotabato Sports Complex, which hosted the Palarong Pambansa in 1996, and the Provincial Capitol Complex, which houses the offices of the provincial government.\n',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15.0,
                          ),
                          textAlign: TextAlign.justify, // Center the text
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Text(
                          'Top Relaxation Spots\n',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.justify, // Center the text
                        ),
                      ),
                      SizedBox(height: 10),
                      Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text:
                                  'Provincial Capitol Complex - Visit this landmark to explore the provincial government offices and enjoy the beautiful landscape of Koronadal.\n\n',
                            ),
                            TextSpan(
                              text:
                                  'South Cotabato Sports Complex - A popular venue for sports enthusiasts, it hosted the Palarong Pambansa in 1996.\n\n',
                            ),
                            TextSpan(
                              text:
                                  'Koronadal City Hall - Learn about the city’s history and culture, and enjoy stunning views from the top of the building.\n\n',
                            ),
                            TextSpan(
                              text:
                                  'T`boli Museum - Discover the culture and heritage of the T`boli tribe, one of the indigenous groups in the area.\n\n',
                            ),
                            TextSpan(
                              text:
                                  'Lantaw Marbel - A popular viewing deck offering a breathtaking panoramic view of Koronadal and its surroundings.\n\n',
                            ),
                            TextSpan(
                              text:
                                  'Local Delicacies - Don’t miss out on the city’s famous mangoes, lechon, and sinuglaw.\n',
                            ),
                          ],
                        ),
                        textAlign: TextAlign.justify, // Center the text
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
