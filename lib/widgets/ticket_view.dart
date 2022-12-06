import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mental_health_application2/utils/app_layout.dart';

import '../utils/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size layoutSize = AppLayout.getSize(context);

    return SizedBox(
      width: layoutSize.width,
      height: 200.0,
      child: Container(
        margin: const EdgeInsets.only(left: 16.0),
        // Contains whole card
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(21.0),
                  topLeft: Radius.circular(21.0),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('NYC', style: Styles.headLine3Style.copyWith(color: Colors.white)),
                      const Spacer(),
                      Text('London', style: Styles.headLine3Style.copyWith(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
