import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/bottom_bar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFeeedf2),
      body: Text("Search Screen"),
      bottomNavigationBar: BottomBar(),
    );
  }
}
