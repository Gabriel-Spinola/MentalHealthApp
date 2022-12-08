import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mental_health_application2/views/home_screen.dart';

import '../routes/app_routes.dart';
import '../utils/app_styles.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  static final List<String> _widgetOptions = <String>[
    AppRoutes.home,
    AppRoutes.search,
    AppRoutes.ticket,
    AppRoutes.profile,
  ];

  void _onItemTapped(int index) {
    if (AppRoutes.selectedIndex == index) return;

    setState(() {
      AppRoutes.selectedIndex = index;
    });

    Navigator.of(context).pop(_widgetOptions);
    Navigator.of(context).pushNamed(_widgetOptions[AppRoutes.selectedIndex]);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: AppRoutes.selectedIndex,
      elevation: 10,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Styles.primaryColor,
      unselectedItemColor: const Color(0xFF526480),
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
          label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: 'Search'
        ),
        BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            label: 'Ticket'
        ),
        BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            label: 'Profile'
        ),
      ],
      onTap: _onItemTapped,
    );
  }
}
