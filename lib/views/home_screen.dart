import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mental_health_application2/utils/app_info_list.dart';
import 'package:mental_health_application2/widgets/card_view.dart';
import 'package:mental_health_application2/widgets/double_text_widget.dart';
import 'package:mental_health_application2/widgets/ticket_view.dart';

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
                        Text('Bom dia!', style: Styles.headLine3Style),
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
                const AppDoubleText(bigText: 'Professionais online', smallText: 'Veja mais'),
              ],
            ),
          ),
          const Gap(15.0),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 20.0),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketList.map((ticket) => TicketView(ticketList: ticket)).toList(),
            ),
          ),
          const Gap(15.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: AppDoubleText(bigText: 'Aprenda', smallText: 'Veja mais'),
          ),
          const Gap(15.0),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 20.0),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: cardsList.map((card) => CardsView(card: card)).toList(),
            )
          ),
        ],
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}