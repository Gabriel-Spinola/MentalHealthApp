import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mental_health_application2/utils/app_layout.dart';
import 'package:mental_health_application2/utils/app_styles.dart';
import 'package:mental_health_application2/widgets/icon_text.dart';

import '../Widgets/bottom_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size layoutSize = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20.0), vertical: AppLayout.getWidth(20.0)),
        children: <Widget>[
          Gap(AppLayout.getHeight(40.0)),
          Text('What are \n you looking for?', style: Styles.headLine1Style.copyWith(fontSize: AppLayout.getWidth(35.0))),
          Gap(AppLayout.getHeight(20.0)),
          FittedBox(
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
              decoration: BoxDecoration(
                color: const Color(0xFFF4F6FD),
                borderRadius: BorderRadius.circular(AppLayout.getHeight(50.0)),
              ),
              child: Row(
                children: <Widget>[
                  // Airline Tickets
                  Container(
                    width: layoutSize.width * .44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7.0)),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50.0))),
                    ),
                    child: const Center(child: Text('Airline Tickets')),
                  ),
                  // Hotels
                  Container(
                    width: layoutSize.width * .44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7.0)),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50.0))),
                    ),
                    child: const Center(child: Text('Hotels')),
                  ),
                ],
              ),
            ),
          ),
          Gap(AppLayout.getHeight(25.0)),
          const IconText(
            text: 'Departure',
            icon: Icons.flight_takeoff_rounded
          ),
          Gap(AppLayout.getHeight(20.0)),
          const IconText(
            text: 'Arrival',
            icon: Icons.flight_land_rounded
          ),
          Gap(AppLayout.getHeight(25.0)),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(18.0), horizontal: AppLayout.getWidth(15.0)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10.0)),
              color: const Color(0xD91130CE),
            ),
            child: Center(
              child: Text('Find Tickets', style: Styles.textStyle.copyWith(color: Colors.white)),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
