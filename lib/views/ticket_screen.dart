import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/bottom_bar.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFeeedf2),
      body: Text("hello"),
      bottomNavigationBar: BottomBar(),
    );
  }
}
