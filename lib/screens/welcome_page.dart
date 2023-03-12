import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:term_project/screens/home_screen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      // appBar: AppBar(
      //   title: Text(
      //     'Travel Information App',
      //     style: TextStyle(color: Color.fromARGB(255, 94, 204, 112),
      //     fontWeight: FontWeight.bold),
      //   ),
      //   backgroundColor: Color.fromARGB(255, 28, 108, 40),
      // ),
      body: Container(
        child: Stack(
          children: <Widget>[
            /// PageView for Image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/Welcome.jpg"),
                ),
              ),
            ),

            /// Custom Buttonr
            // SafeArea(
            //   child: Container(
            //     height: 57.6,
            //     margin: EdgeInsets.only(top: 28.8, left: 28.8, right: 28.8),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: <Widget>[
            //         GestureDetector(
            //           onTap: () {
            //             Navigator.of(context).pop();
            //           },
            //           child: Container(
            //             height: 57.6,
            //             width: 57.6,
            //             padding: EdgeInsets.all(18),
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(9.6),
            //               color: Color(0x10000000),
            //             ),
            //             child: SvgPicture.asset(
            //                 'assets/icons/icon_left_arrow.svg'),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),

            /// Content
            Align(
              alignment: Alignment.center,
              child: Container(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height * 1,
                  //maxHeight: MediaQuery.of(context).size.height * 0.5
                ),
                padding: EdgeInsets.only(left: 28.8, top: 40, right: 28.8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Padding(
                    //   padding: EdgeInsets.only(top: 10),
                    //   child: Text(
                    //     dest.description,
                    //     maxLines: 8,
                    //     overflow: TextOverflow.fade,
                    //     style: GoogleFonts.lato(
                    //         fontSize: 14,
                    //         fontWeight: FontWeight.w500,
                    //         color: Colors.white),
                    //   ),
                    // ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.35,
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Welcome!',
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 40,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 10.0,
                              color: Colors.white,
                            ),
                          ],
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                          child: Text("Enter", style: TextStyle(fontSize: 16)),
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 2, 96, 49)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(
                                          color: Color.fromARGB(
                                              255, 2, 96, 49))))),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                            );
                          }),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      // Container(
      //     decoration: BoxDecoration(
      //       image: DecorationImage(
      //         image: AssetImage("assets/images/Welcome.jpg"),
      //         fit: BoxFit.cover,
      //       ),
      //     ),
      //   ),
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: <Widget>[
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Column(
      //             children: [
      //               // SizedBox(
      //               //   // width: double.infinity,
      //               //   height: 50,
      //               // ),
      //               Center(
      //                 child: Text(
      //                   'WelCome!',
      //                   textAlign: TextAlign.center,
      //                   style: TextStyle(
      //                     color: Color.fromARGB(255, 0, 81, 47),
      //                     fontWeight: FontWeight.bold,
      //                     decoration: TextDecoration.underline,
      //                     fontSize: 27,
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //           Container(
      //               child: ElevatedButton(
      //                   child: Text("Next", style: TextStyle(fontSize: 16)),
      //                   style: ButtonStyle(
      //                       foregroundColor: MaterialStateProperty.all<Color>(
      //                           Colors.white),
      //                       backgroundColor: MaterialStateProperty.all<Color>(
      //                           Color.fromARGB(255, 2, 96, 49)),
      //                       shape: MaterialStateProperty.all<
      //                               RoundedRectangleBorder>(
      //                           RoundedRectangleBorder(
      //                               borderRadius: BorderRadius.circular(18.0),
      //                               side: BorderSide(
      //                                   color: Color.fromARGB(
      //                                       255, 2, 96, 49))))),
      //                   onPressed: () {
      //                     Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                             builder: (context) => const HomeScreen()));
      //                   })),
      //         ],
      //       ),
      //     ),
      //     Container(
      //       child: Image.network(
      //           'https://cdn.pixabay.com/photo/2015/04/27/11/48/sign-741813_960_720.jpg'),
      //     )
      //   ],
      // ),
    );
  }
}
