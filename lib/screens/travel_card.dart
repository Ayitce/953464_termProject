import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:term_project/constatns/app_constatns.dart';
import 'package:term_project/screens/travel_card_info.dart';
import 'dart:math' as math;
import '../models/travelsInfo.dart';

class travelCard extends StatefulWidget {
  const travelCard({super.key});

  @override
  State<travelCard> createState() => _travelCardState();
}

class _travelCardState extends State<travelCard> {
  late PageController _pageController;
  int initialPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.8,
      initialPage: initialPage,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: 1,
        child: PageView.builder(
          onPageChanged: (value) {
            setState(() {
              initialPage = value;
            });
          },
          controller: _pageController,
          physics: ClampingScrollPhysics(),
          itemCount: travelsInfo.length,
          itemBuilder: (context, index) => buildTravelSlider(index),
        ),
      ),
    );
  }

  Widget buildTravelSlider(int index) => AnimatedBuilder(
        animation: _pageController,
        builder: (context, child) {
          double value = 0;
          if (_pageController.position.haveDimensions) {
            value = index - _pageController.page!;
            value = (value * 0.05).clamp(-1, 1);
          }
          return AnimatedOpacity(
            opacity: initialPage == index ? 1 : 0.4,
            duration: Duration(milliseconds: 350),
            child: Transform.rotate(
              angle: math.pi * value,
              child: TravelCard(
                dest: travelsInfo[index],
              ),
            ),
          );
        },
      );
}
