import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../routes/app_routes.dart';
import '../Widgets/bottom_bar.dart';
import '../utils/app_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: <Widget>[
                const Gap(40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // Apply space evenly between the children
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // Place the children aligned with the start side of the cross axis
                      children: <Widget>[
                        Text('Good Morning', style: Styles.headLine3Style),
                        const Gap(5.0),
                        Text('Book Tickets', style: Styles.headLine1Style),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/img_1.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(25.0),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: Row(
                    children: <Widget>[
                      const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205)),
                      Text("Search", style: Styles.headLine4Style),
                    ],
                  ),
                ),
                const Gap(40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Upcoming Flights', style: Styles.headLine2Style),
                    InkWell(
                      child: Text('View All', style: Styles.textStyle.copyWith(color: Styles.primaryColor)),
                      onTap: () {
                        print('tapped');
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
          
        ],
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}