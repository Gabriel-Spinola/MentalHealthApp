import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AppDoubleText extends StatelessWidget {
  final String bigText;
  final String smallText;

  const AppDoubleText({Key? key, required this.bigText, required this.smallText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(bigText, style: Styles.headLine2Style),
        InkWell(
          child: Text(smallText, style: Styles.textStyle.copyWith(color: Styles.primaryColor)),
          onTap: () {
            print('tapped');
          },
        ),
      ],
    );
  }
}
