import 'package:flutter/material.dart';
import 'package:final_app/Achi.dart';
import 'package:final_app/Banga.dart';
import 'package:final_app/Gensan.dart';
import 'package:final_app/Koronadal.dart';
import 'package:final_app/LakeSebu.dart';
import 'package:final_app/MainScreen.dart';
import 'package:final_app/MapLayout.dart';
import 'package:final_app/MyDashboard.dart';
import 'package:final_app/Norala.dart';
import 'package:final_app/Note.dart';
import 'package:final_app/Polomolok.dart';
import 'package:final_app/SoCot.dart';
import 'package:final_app/StoNino.dart';
import 'package:final_app/Surallah.dart';
import 'package:final_app/Tampakan.dart';
import 'package:final_app/Tantangan.dart';
import 'package:final_app/Tboli.dart';
import 'package:final_app/Tupi.dart';

class MyDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyDashboardHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyDashboardHome extends StatefulWidget {
  @override
  _MyDashboardHomeState createState() => _MyDashboardHomeState();
}

class _MyDashboardHomeState extends State<MyDashboardHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SoCot Explore',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellowAccent,
        actions: [
          IconButton(
            icon: Icon(Icons.note_alt_outlined, color: Colors.black),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) => NoteApp()),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.yellow.shade400,
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top + 20), 
            InkWell(
              child: ListTile(
                leading: Icon(Icons.cookie_outlined, color: Colors.black),
                title: Text(
                  'Achievements',
                  style: TextStyle(color: Colors.black, fontFamily: 'Roboto', fontSize: 18),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Achievement()));
              },
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.home, color: Colors.black),
                title: Text(
                  'To Main Screen',
                  style: TextStyle(color: Colors.black, fontFamily: 'Roboto', fontSize: 18),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => MainScreen()));
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.yellow.shade200, Colors.deepOrange.shade100],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          children: [
            _buildLocationCard('South Cotabato', 'Soccsksargen (6°10′N 125°00′E)', SoCot()),
            _buildLocationCard('Banga', '6°25′25″N 124°46′24″E', Banga()),
            _buildLocationCard('General Santos City', '6°06′50″N 125°10′18″E', Gensan()),
            _buildLocationCard('Koronadal City', '6°30′01″N 124°50′37″E', Koronadal()),
            _buildLocationCard('Lake Sebu', '6°13′29″N 124°42′42″E', LakeSebu()),
            _buildLocationCard('Norallah', '6°31′08″N 124°39′24″E', Norallah()),
            _buildLocationCard('Polomolok', '6°12′51″N 125°03′52″E', Polomolok()),
            _buildLocationCard('Santo Niño', '6°26′17″N 124°40′24″E', StoNino()),
            _buildLocationCard('Surallah', '6°22′32″N 124°44′50″E', Surallah()),
            _buildLocationCard('Tampakan', '6°26′38″N 124°55′38″E', Tampakan()),
            _buildLocationCard('Tantangan', '6°33′48″N 124°46′06″E', Tantangan()),
            _buildLocationCard('Tboli', '6°12′51″N 124°51′33″E', Tboli()),
            _buildLocationCard('Tupi', '6°20′55″N 124°51′33″E', Tupi()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) => MapLayout()),
          );
        },
        backgroundColor: Colors.yellow,
        child: Icon(Icons.location_on_outlined, color: Colors.red),
      ),
    );
  }

  Widget _buildLocationCard(String title, String subtitle, Widget destination) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      elevation: 8,
      shadowColor: Colors.deepOrange.withOpacity(0.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.white,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            color: Colors.black54,
            fontFamily: 'Roboto',
          ),
        ),
        leading: CircleAvatar(
          child: Icon(Icons.pin_drop_outlined, color: Colors.red),
          backgroundColor: Colors.yellow.shade200,
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) => destination),
          );
        },
      ),
    );
  }
}
