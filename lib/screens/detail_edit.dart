import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:term_project/models/travelsInfo.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class DetailsEdit extends StatelessWidget {
  final _pageController = PageController();
  final TravelsInfo dest;
  DetailsEdit({
    Key? key,
    required this.dest,
  }) : super(key: key);

  sendNotification() async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails('10000',
        'FLUTTER_NOTIFICATION_CHANNEL', 'FLUTTER_NOTIFICATION_CHANNEL_DETAIL',
        importance: Importance.max, priority: Priority.high);
    var iOSPlatformChannelSpecifics = IOSNotificationDetails();

    var platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics);

    await flutterLocalNotificationsPlugin.show(111, 'Notification, New Detail Update.',
        'New detail has been update ,please cheack ', platformChannelSpecifics);
  }

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();

    var initializationSettingsAndroid =
        const AndroidInitializationSettings('ic_launcher');
    var initializationSettingsIOS = IOSInitializationSettings();
    var initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);

    flutterLocalNotificationsPlugin.initialize(initializationSettings);

    TextEditingController _controller =
        TextEditingController(text: dest.description);

    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            /// PageView for Image
            PageView(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              children: List.generate(
                dest.images.length,
                (int index) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(dest.images[index]),
                    ),
                  ),
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
              alignment: Alignment.bottomLeft,
              child: Container(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height * 0.5,
                  //maxHeight: MediaQuery.of(context).size.height * 0.5
                ),
                padding: EdgeInsets.only(left: 28.8, top: 40, right: 28.8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SmoothPageIndicator(
                      controller: _pageController,
                      count: dest.images.length,
                      effect: ExpandingDotsEffect(
                          activeDotColor: Color(0xFFFFFFFF),
                          dotColor: Color(0xFFababab),
                          dotHeight: 4.8,
                          dotWidth: 6,
                          spacing: 4.8),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        dest.tagLine,
                        maxLines: 3,
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,backgroundColor: Colors.black.withOpacity(0.5)),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(color:Colors.black.withOpacity(0.5)),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        maxLines: null,
                        controller: _controller, // <-- SEE HERE
                        decoration:
                            InputDecoration(labelText: 'Edit description', labelStyle: TextStyle(backgroundColor: Colors.black.withOpacity(0.5), color: Colors.white)),
                      ),
                    ),

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
                      height: 30,
                    ),
                    Container(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                                child: Text("Cancel",
                                    style: TextStyle(fontSize: 16)),
                                style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color.fromARGB(255, 2, 96, 49)),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color:
                                                    Color.fromARGB(255, 2, 96, 49))))),
                                onPressed: () {
                                  Navigator.pop(context);
                                }),
                            ElevatedButton(
                                child: Text("Edit",
                                    style: TextStyle(fontSize: 16)),
                                style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all<Color>(
                                        Colors.white),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color.fromARGB(255, 2, 96, 49)),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 2, 96, 49))))),
                                onPressed: () {
                                  sendNotification();
                                  Navigator.pop(context);
                                  dest.setDescription(_controller.text);
                                }),
                          ],
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
