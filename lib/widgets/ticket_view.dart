import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mental_health_application2/utils/app_layout.dart';
import 'package:mental_health_application2/widgets/round_container.dart';

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
            // Card blue part
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

                      const RoundContainer(),
                      Expanded(
                        // Used to overlap widgets
                        child: Stack(
                          children: <Widget>[
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context, BoxConstraints constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      // Generate more or less dashes depending on the screen size
                                      (constraints.constrainWidth(double.infinity) / 6).floor(),
                                      (index) => const SizedBox(
                                        width: 3.0,
                                        height: 1.0,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(child: Transform.rotate(angle: 1.5, child: const Icon(Icons.local_airport_rounded, color: Colors.white))),
                          ],
                        )
                      ),
                      const RoundContainer(),

                      const Spacer(),

                      Text('LDN', style: Styles.headLine3Style.copyWith(color: Colors.white)),
                    ],
                  ),
                  const Gap(3.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: 100,
                        child: Text('New-York', style: Styles.headLine4Style.copyWith(color: Colors.white)),
                      ),
                      Text('8H 30M', style: Styles.headLine4Style.copyWith(color: Colors.white)),
                      SizedBox(
                        width: 100,
                        child: Text('London', textAlign: TextAlign.end, style: Styles.headLine4Style.copyWith(color: Colors.white)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Card orange part
            Container(),
          ],
        ),
      ),
    );
  }
}
