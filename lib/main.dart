import 'package:flutter/material.dart';
import 'package:mental_health_application2/routes/app_routes.dart';
import 'package:mental_health_application2/utils/app_styles.dart';
import 'package:mental_health_application2/views/home_screen.dart';
import 'package:mental_health_application2/views/profile_screen.dart';
import 'package:mental_health_application2/views/search_screen.dart';
import 'package:mental_health_application2/views/ticket_screen.dart';

// TODO make everything responsive with appLayout stuff

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mental Health App',
      theme: ThemeData(
        primaryColor: primary,
      ),
      routes: {
        AppRoutes.home: (_) => const HomeScreen(),
        AppRoutes.search: (_) => const SearchScreen(),
        AppRoutes.ticket: (_) => const TicketScreen(),
        AppRoutes.profile: (_) => const ProfileScreen(),
      },
    );
  }
}