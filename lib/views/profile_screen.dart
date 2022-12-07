import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mental_health_application2/utils/app_layout.dart';
import 'package:mental_health_application2/utils/app_styles.dart';
import 'package:path/path.dart';

import '../Widgets/bottom_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: <Widget>[
          Container(
            width: 86,
            height: 86,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(10.0)),
              image: DecorationImage(
                image: AssetImage('assets/images/img_1.png'),
              )
            ),
          )
        ],
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
