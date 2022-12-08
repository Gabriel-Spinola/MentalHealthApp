import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mental_health_application2/utils/app_layout.dart';
import 'package:mental_health_application2/utils/app_styles.dart';

class ColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  final bool? isColor;

  const ColumnLayout({Key? key, required this.alignment, required this.firstText, required this.secondText, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: <Widget>[
        Text(firstText, style: isColor == null ? Styles.headLine3Style.copyWith(color: Colors.white) : Styles.headLine3Style),
        Gap(AppLayout.getHeight(5.0)),
        Text(secondText, style: isColor == null ? Styles.headLine4Style.copyWith(color: Colors.white) : Styles.headLine4Style),
      ],
    );
  }
}
