import 'dart:math';
import 'package:flutter/material.dart';
import 'package:final_app/MyDashboard.dart';

class Tantangan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.yellow.shade100),
      home: TantanganHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TantanganHome extends StatefulWidget {
  @override
  State<TantanganHome> createState() => _TantanganHomeState();
}

class _TantanganHomeState extends State<TantanganHome> {
  final List<String> triviaList = [
    ' The name "Tantangan" is thought to come from the word "tantang," which means "to catch" or "to hold," referring to the town`s location near flowing rivers and streams.',
    "Tantangan plays a key role in South Cotabato’s agriculture, particularly in the production of rice, corn, and coconuts, contributing significantly to the local economy.",
    "While not directly beside Lake Sebu, Tantangan serves as an entry point to the beautiful lake, a well-known eco-tourism spot in the area.",
    "The municipality of Tantangan boasts a variety of natural attractions such as rivers, waterfalls, and forests, making it a popular destination for eco-tourism and outdoor activities."
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
          'Tantangan',
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
                          'Tantangan',
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
                            'assets/images/tantangan.jpg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // Use Text instead of Text.rich
                      Center(
                        child: Text(
                          "Tantangan is a municipality in South Cotabato, Philippines, situated in the central region of the province.\n\n"
                          "It is bordered by Banga to the south, Tupi to the east, Koronadal City to the north, and Tampakan to the west. The closest city to Tantangan is Koronadal, located about 8 kilometers away.\n\n"
                          "Tantangan was originally a barrio of Banga, South Cotabato. It was officially declared a separate municipality on July 17, 1961, through Republic Act No. 3398.\n\n"
                          "Tantangan is home to cultural landmarks like the Municipal Hall and San Roque Parish Church. The town celebrates its foundation anniversary on July 17 with cultural and sports events.\n\n",
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
                                    "Tantangan Eco-Park – This local park provides a peaceful environment with opportunities for picnics, light trekking, and enjoying nature.\n\n",
                              ),
                              TextSpan(
                                text:
                                    "San Roque Parish Church – A quiet spot for reflection and a glimpse of the town's cultural heritage, offering a peaceful atmosphere for relaxation and contemplation.\n\n",
                              ),
                              TextSpan(
                                text:
                                    "Rivers and Waterfalls – Tantangan is home to scenic rivers and waterfalls, providing a tranquil setting for those looking to connect with nature or enjoy quiet moments by the water.\n\n",
                              ),
                              TextSpan(
                                text:
                                    "Mountain Trails – The surrounding mountains offer trails where visitors can enjoy the fresh air and panoramic views, perfect for those seeking solitude and relaxation.\n",
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
