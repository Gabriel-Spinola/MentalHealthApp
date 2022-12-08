import 'package:flutter/material.dart';

class AppLayoutBuilder extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final double width;

  const AppLayoutBuilder({Key? key, this.isColor, required this.sections, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints contraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
            (contraints.constrainWidth() / sections).floor(),
            (index) => SizedBox(
              width: width,
              height: 1.0,
              child: DecoratedBox(
                decoration: BoxDecoration(color: isColor == null ? Colors.white : Colors.grey.shade300),
              ),
            )
          ),
        );
      }
    );
  }
}