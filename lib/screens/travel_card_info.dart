import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:term_project/constatns/app_constatns.dart';
import 'package:term_project/models/travelsInfo.dart';
import 'package:term_project/screens/detail_screen.dart';

class TravelCard extends StatelessWidget {
  final TravelsInfo dest;

  const TravelCard({Key? key, required this.dest}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: OpenContainer(
        closedElevation: 0,
        openElevation: 0,
        closedBuilder: (context, action) => buildTravelCard(context),
        openBuilder: (context, action) => DetailsScreen(dest: dest,),
      ),
    );
  }

  Column buildTravelCard(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              boxShadow: [kDefaultShadow],
              image: DecorationImage(
                image: AssetImage(dest.image),
                fit: BoxFit.fill,
              )),
        )
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          child: Text(
            dest.name,
            style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.w600)
          ),
          ),
      ],
    );
  }
}
