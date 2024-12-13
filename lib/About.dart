import 'package:flutter/material.dart';
import 'package:final_app/MainScreen.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.yellow.shade100),
      home: AboutHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AboutHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About',
          style: TextStyle(fontFamily: 'Roboto', color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => MainScreen(),
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
                      Text(
                        'Welcome to SoCot Explore!',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '\n\nExplore South Cotabato like you never have before with the help of SoCot Explore, your all-in-one guide to learning and traveling in this excellent province.\nThis app comes with a Smart Itinerary Planner for easy organization of daily learning and traveling, so you can experience rich history, culture, and what South Cotabato has in store for everyone.',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        '\nBe amazed with fascinating trivia that highlights the unique charm of South Cotabato, setting it apart from other provinces in the Philippines.\nWith user-friendly features and a commitment to accurate information, SoCot Explore ensures a hassle-free experience and eliminates the frustration of encountering false or unreliable online sources.',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        '\nSet out on this journey of discovery with SoCot Explore to bring South Cotabato closer to you!\n\n',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        'Framework: Flutter',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        '\nAn application project for Information Management.',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        '\n\nHacker: Reigner Jhon S. Torres\n\nHustler: Alessandra Ishidori Fernandez\n\nHipster: Kyrie Alieson Billones',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            color: Colors.black),
                        textAlign: TextAlign.center,
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
