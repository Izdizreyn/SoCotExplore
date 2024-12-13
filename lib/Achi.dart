import 'dart:async';
import 'package:flutter/material.dart';
import 'package:final_app/MyDashboard.dart';

void main() {
  runApp(Achievement());
}

class Achievement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.yellow.shade100),
      home: AchievementHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AchievementHome extends StatefulWidget {
  @override
  State<AchievementHome> createState() => _AchievementHomeState();
}

class _AchievementHomeState extends State<AchievementHome> {
  final Map<String, bool> unlockedBadges = {
    'Longest Surfing': false,
    'First Visit': true,
    'Profile Completion': false,
    'Frequent User': true,
    'Social Sharer': false,
  };

  int timeSpentInSeconds = 0;
  final int surfingTimeThreshold = 7200;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTrackingTime();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTrackingTime() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        timeSpentInSeconds++;
        if (timeSpentInSeconds >= surfingTimeThreshold &&
            !unlockedBadges['Longest Surfing']!) {
          unlockedBadges['Longest Surfing'] = true;
        }
      });
    });
  }

  String _formatTimeSpent() {
    int hours = timeSpentInSeconds ~/ 3600;
    int minutes = (timeSpentInSeconds % 3600) ~/ 60;
    int seconds = timeSpentInSeconds % 60;
    return '${hours}h ${minutes}m ${seconds}s';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Badges',
          style: TextStyle(fontFamily: 'Roboto'),
        ),
        backgroundColor: Colors.yellow,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(
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
          child: Padding(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                AchievementBadge(
                  icon: Icons.access_time,
                  title: 'Longest Surfing',
                  description:
                      'Awarded for spending 2 hours browsing the app! (Time: ${_formatTimeSpent()})',
                  isUnlocked: unlockedBadges['Longest Surfing'] ?? false,
                ),
                SizedBox(height: 20),
                AchievementBadge(
                  icon: Icons.star,
                  title: 'First Visit',
                  description: 'Awarded after the first visit to the app.',
                  isUnlocked: unlockedBadges['First Visit'] ?? false,
                ),
                SizedBox(height: 20),
                AchievementBadge(
                  icon: Icons.access_alarm,
                  title: 'Frequent User',
                  description:
                      'Awarded for using the app multiple times a week!',
                  isUnlocked: unlockedBadges['Frequent User'] ?? false,
                ),
                SizedBox(height: 20),
                AchievementBadge(
                  icon: Icons.share,
                  title: 'Social Sharer',
                  description: 'Awarded for sharing the app with your friends!',
                  isUnlocked: unlockedBadges['Social Sharer'] ?? false,
                  onPressed: () {
                    _shareApp();
                  },
                ),
              ],
            ),
          )),
    );
  }

  void _shareApp() {
    // Placeholder for sharing functionality
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Share App'),
          content: Text('Sharing functionality is under development.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}

class AchievementBadge extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final bool isUnlocked;
  final VoidCallback? onPressed;

  AchievementBadge({
    required this.icon,
    required this.title,
    required this.description,
    required this.isUnlocked,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isUnlocked ? Colors.green.shade200 : Colors.yellow.shade300,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(
              icon,
              size: 40,
              color: Colors.black,
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    description,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              isUnlocked ? Icons.check_circle : Icons.lock,
              size: 30,
              color: isUnlocked ? Colors.green : Colors.grey,
            ),
            if (onPressed != null)
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: onPressed,
              ),
          ],
        ),
      ),
    );
  }
}
