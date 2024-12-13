import 'dart:math';
import 'package:flutter/material.dart';
import 'package:final_app/MyDashboard.dart';

class LakeSebu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.yellow.shade100),
      home: LakeSebuHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LakeSebuHome extends StatefulWidget {
  @override
  State<LakeSebuHome> createState() => _LakeSebuHomeState();
}

class _LakeSebuHomeState extends State<LakeSebuHome> {
  final List<String> triviaList = [
    "Lake Sebu is often referred to as the “Summer Capital of South Cotabato” due to its cool climate, breathtaking scenery, and its reputation as a relaxing getaway spot. Situated in the highlands of South Cotabato, it is one of the most beautiful and culturally significant locations in the province, attracting both local and international tourists.",
    "Lake Sebu is known for its tilapia and bangus (milkfish), which are raised in fish cages on the lake. The fish farming industry in Lake Sebu is vital to the local economy. Visitors can enjoy freshly caught fish at local restaurants and try popular dishes like grilled tilapia or fish sinigang (sour soup).",
    "Lake Sebu, with its rich biodiversity and forested landscapes, is a haven for birdwatchers. The area is home to several species of endemic birds, including the Philippine eagle and Philippine tarsier, both of which are critically endangered. The surrounding forests provide an ideal habitat for these species, making Lake Sebu a great destination for those interested in birdwatching and wildlife conservation.",
    "Lake Sebu was once part of the larger T'boli kingdom and was a center for trade and cultural exchange among various indigenous groups in the region. The town’s rich history is reflected in its traditional houses, artifacts, and the T'boli people's oral traditions that tell the stories of the past."
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
          'Lake Sebu',
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
                          'Lake Sebu',
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
                            'assets/images/lake.jpg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // Use Text instead of Text.rich
                      Center(
                        child: Text(
                          //kani?// sa diklap
                          "Lake Sebu is a first-class Municipality and a home of more the eighty thousand people covered by the province of South Cotabato, Philippines. Nested with natural beauty, surrounded by hills, mountainous landscapes, and virgin thick forests covering 42,450 hectares of land area.\n\n"
                          "Lake Sebu is also a home of several Indigenous tribes (T’boli, Ubo, Tiruray, and Manobos), maintain their cultural identity, and is known for their unique skills in weaving, brass casting, and fishing activities.\n\n"
                          "Lake Sebu is on the border beside the town of Surallah, Tiboli (South Cotabato Province), and Sto. Nino town (way going to Sultan Kudarat province). The climate condition is cool; no doubt that Lake Sebu is the most visited place during summer and is known to be the Summer Capital of Southern  Mindanao with a booming Natural Tourism spot. \n\n"
                          "The town is named after its main attraction, Lake Sebu, which is a natural lake that is approximately 354 hectares in size. The lake is surrounded by lush forests and is home to various species of fish, birds, and other wildlife. It is also the traditional homeland of the T'boli people, one of the indigenous groups in the area./n/n",
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
                                    "The Seven Falls - Trek through the lush forest to see the seven cascading waterfalls that make up the Seven Falls. Visitors can take a dip in the cool waters and enjoy the scenic views.\n\n",
                              ),
                              TextSpan(
                                text:
                                    "Mount Baldy (Mt. Sebu) - For hiking enthusiasts, Mt. Baldy, also known as Mt. Sebu, offers an exhilarating trek with spectacular panoramic views of the entire Lake Sebu region. The summit provides a stunning vantage point of the Seven Falls, Lake Sebu, and the surrounding highlands. The hike is moderate to challenging, making it a great adventure for those looking to experience the beauty of Lake Sebu from above.\n\n",
                              ),
                              TextSpan(
                                  text:
                                      "Sebu River - The Sebu River flows through the Lake Sebu area, providing essential irrigation for the surrounding farms and rice fields. Visitors can explore parts of the river by boat, either for birdwatching or just to enjoy the tranquil ride through lush landscapes. The river also supports the local fish farming industry, making it a significant waterway for the people of Lake Sebu.\n\n"),
                              TextSpan(
                                text:
                                    "Lake Seloton - Lake Seloton is another tranquil lake located near the town of Lake Sebu. It is surrounded by lush forests and is less crowded than Lake Sebu itself, making it perfect for those looking for a more peaceful retreat. The lake is home to a variety of waterfowl and is ideal for nature walks, picnics, and photography. Visitors can enjoy the serene environment, explore the area by foot, and admire the beauty of the surroundings.\n",
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
                        //diri ma call tung trivia sa override
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
