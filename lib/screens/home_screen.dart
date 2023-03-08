import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:term_project/screens/travel_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text(
          'Travel Information App',
          style: TextStyle(color: Color.fromARGB(255, 94, 204, 112), 
          fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 28, 108, 40),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Select place',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 81, 47),
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      fontSize: 27,
                    ),
                  ),
                ],
              ),
            ),
            travelCard(),
          ],
        ),
      ),
    );
  }
}
