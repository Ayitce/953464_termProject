import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:term_project/screens/home_screen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

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
                  Column(
                    children: [
                      // SizedBox(
                      //   // width: double.infinity,
                      //   height: 50,
                      // ),
                      Center(
                        child: Text(
                          'WelCome!',textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 81, 47),
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            fontSize: 27,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                   child: ElevatedButton(
                                child: Text("Next", style: TextStyle(fontSize: 16)),
                                style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all<Color>(
                                        Colors.white),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color.fromARGB(255, 2, 96, 49)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color:
                                                    Color.fromARGB(255, 2, 96, 49))))),
                                onPressed: () {
                               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()));
                                })
                  )
                ],
              ),
            ),
         
          ],
        ),
      ),
    );
  }
}