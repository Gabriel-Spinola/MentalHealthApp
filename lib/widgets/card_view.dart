import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mental_health_application2/utils/app_layout.dart';

import '../utils/app_styles.dart';

class CardsView extends StatelessWidget {
  const CardsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size layoutSize = AppLayout.getSize(context);

    return Container(
      margin: const EdgeInsets.only(right: 17.0, top: 5.0),
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 17.0),
      width: layoutSize.width * .6,
      height: 350,
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 2.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(12.0),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/one.png')
              ),
            ),
          ),
          const Gap(10.0),
          Text('Open Space', style: Styles.headLine2Style.copyWith(color: Styles.kakiColor)),
          const Gap(5.0),
          Text('London', style: Styles.headLine3Style.copyWith(color: Colors.white)),
          const Gap(8.0),
          Text('\$40/night', style: Styles.headLine1Style.copyWith(color: Styles.kakiColor)),
        ]
      ),
    );
  }
}
