import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mental_health_application2/utils/app_layout.dart';
import 'package:mental_health_application2/widgets/round_container.dart';

import '../utils/app_styles.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticketList;

  const TicketView({Key? key, required this.ticketList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size layoutSize = AppLayout.getSize(context);

    return SizedBox(
      width: layoutSize.width * 0.94,
      height: AppLayout.getHeight(200.0),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16.0)),
        // Contains whole card
        child: Column(
          children: <Widget>[
            // Card blue part
            Container(
              padding: EdgeInsets.all(AppLayout.getHeight(16.0)),
              decoration: BoxDecoration(
                color: const Color(0xFF526799),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(AppLayout.getHeight(21.0)),
                  topLeft: Radius.circular(AppLayout.getHeight(21.0)),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('${ticketList['from']['code']}', style: Styles.headLine3Style.copyWith(color: Colors.white)),

                      const Spacer(),

                      const RoundContainer(),
                      Expanded(
                        // Used to overlap widgets
                        child: Stack(
                          children: <Widget>[
                            SizedBox(
                              height: AppLayout.getHeight(24.0),
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
                            Center(child: Transform.rotate(angle: 0, child: const Icon(Icons.person_rounded, color: Colors.white))),
                          ],
                        )
                      ),
                      const RoundContainer(),

                      const Spacer(),

                      Text('${ticketList['to']['code']}', style: Styles.headLine3Style.copyWith(color: Colors.white)),
                    ],
                  ),
                  const Gap(3.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: AppLayout.getWidth(100.0),
                        child: Text('${ticketList['from']['name']}', style: Styles.headLine4Style.copyWith(color: Colors.white)),
                      ),
                      Text('${ticketList['flying_time']}', style: Styles.headLine4Style.copyWith(color: Colors.white)),
                      SizedBox(
                        width: AppLayout.getWidth(100.0),
                        child: Text('${ticketList['to']['name']}', textAlign: TextAlign.end, style: Styles.headLine4Style.copyWith(color: Colors.white)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Card orange part
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: AppLayout.getWidth(10.0),
                    height: AppLayout.getHeight(20.0),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), bottomRight: Radius.circular(10.0)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) =>
                              const SizedBox(
                                width: 5.0,
                                height: 1.0,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(color: Colors.white)
                                ),
                              )
                            )
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                    height: 20.0,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), bottomLeft: Radius.circular(10.0)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // Bottom part of the orange card
            Container(
              padding: const EdgeInsets.only(left: 16.0, top: 10.0, right: 16.0, bottom: 16.0),
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21.0),
                  bottomRight: Radius.circular(21.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('${ticketList['date']}', style: Styles.headLine3Style.copyWith(color: Colors.white)),
                          const Gap(5.0),
                          Text('Funciona às', style: Styles.headLine4Style.copyWith(color: Colors.white)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('${ticketList['departure_time']}', style: Styles.headLine3Style.copyWith(color: Colors.white)),
                          const Gap(5.0),
                          Text('Disponivel às', style: Styles.headLine4Style.copyWith(color: Colors.white)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
