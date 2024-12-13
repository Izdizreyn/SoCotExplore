import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:final_app/MainScreen.dart';
import 'package:final_app/MyDashboard.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DashboardHome();
  }
}

class DashboardHome extends StatefulWidget {
  @override
  State<DashboardHome> createState() => _DashboardHomeState();
}

class _DashboardHomeState extends State<DashboardHome> {
  final List<String> _imagePaths = [
    'assets/images/aaa.png',
    'assets/images/banga.png',
    'assets/images/gensan.jpg',
    'assets/images/koronadal.jpg',
    'assets/images/lake.jpg',
    'assets/images/norala.jpg',
    'assets/images/polomolok.JPG',
    'assets/images/stonino.jpg',
    'assets/images/surallah.jpg',
    'assets/images/tampakan.jpg',
    'assets/images/tantangan.jpg',
    'assets/images/tboli.JPG',
    'assets/images/tupi.jpg',
  ];

  String _currentImage = '';
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _currentImage = _getRandomImage(); // Set the initial image
    _startImageChangeTimer(); // Start the timer for image changes
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  // Function to get a random image path
  String _getRandomImage() {
    final random = Random();
    return _imagePaths[random.nextInt(_imagePaths.length)];
  }

  // Function to start the timer
  void _startImageChangeTimer() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        _currentImage = _getRandomImage(); // Update the image
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Stack(
        children: [
          // Background gradient
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.yellow.shade200, Colors.orange.shade300],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // Decorative circles
          Positioned(
            top: 50,
            left: -30,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orange.shade100.withOpacity(0.5),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            right: -30,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.yellow.shade100.withOpacity(0.5),
              ),
            ),
          ),
          // Main content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'WELCOME TO SOCOT EXPLORE!',
                  style: TextStyle(
                    fontFamily: 'SourceSerif4',
                    fontSize: 28,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 400,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(_currentImage),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(2, 4),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => MyDashboard()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 5,
                    ),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
