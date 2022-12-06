import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/bottom_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFeeedf2),
      body: Text("ProfileScreen"),
      bottomNavigationBar: BottomBar(),
    );
  }
}
