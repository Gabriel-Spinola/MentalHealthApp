import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mental_health_application2/utils/app_layout.dart';
import 'package:mental_health_application2/utils/app_styles.dart';
import 'package:mental_health_application2/widgets/app_layout_builder.dart';
import 'package:mental_health_application2/widgets/icon_text.dart';

import '../Widgets/bottom_bar.dart';
import '../widgets/double_text_widget.dart';

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
          Gap(AppLayout.getHeight(40.0)),
          const AppDoubleText(bigText: 'Upcoming Flights', smallText: 'View all'),
          Gap(AppLayout.getHeight(15.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: AppLayout.getHeight(410.0),
                width: layoutSize.width * .42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10.0), vertical: AppLayout.getHeight(10.0)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: AppLayout.getHeight(190.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12.0)),
                        image: const DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/images/sit.jpg')),
                      ),
                    ),
                    Gap(AppLayout.getHeight(12.0)),
                    Text(
                      '20% discount on the early booking of this flight. Don\'t miss out of this chance!',
                      style: Styles.headLine2Style,
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        width: layoutSize.width * .44,
                        height: AppLayout.getHeight(180.0),
                        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15.0), vertical: AppLayout.getHeight(15.0)),
                        decoration: BoxDecoration(
                            color: const Color(0xFF3AB8B8),
                            borderRadius: BorderRadius.circular(AppLayout.getHeight(18.0))
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Dicount\nfor survey', style: Styles.headLine2Style.copyWith(color: Colors.white)),
                            Gap(AppLayout.getHeight(10.0)),
                            Text(
                              'Take the survey about our service and get discount',
                              style: Styles.headLine2Style.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18.0
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45.0,
                        top: -40.0,
                        child: Container(
                              padding: EdgeInsets.all(AppLayout.getHeight(30.0)),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(width: 18.0 , color: const Color(0xFF189999)),
                                color: Colors.transparent,
                              )
                          ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(15.0)),
                  Container(
                    width: layoutSize.width * .44,
                    height: AppLayout.getHeight(210.0),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15.0), horizontal: AppLayout.getWidth(15.0)),
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18.0)),
                      color: const Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: <Widget>[
                        Text('Take Love', style: Styles.headLine2Style.copyWith(color: Colors.white), textAlign: TextAlign.center),
                        Gap(AppLayout.getHeight(5.0)),
                        RichText(
                          text: const TextSpan(
                            children: <InlineSpan>[
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 30),
                              ),
                              TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 41),
                              ),
                              TextSpan(
                                text: '😘',
                                style: TextStyle(fontSize: 30),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(12.0)),
        ],
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
