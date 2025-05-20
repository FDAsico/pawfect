import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  final currentPageIndex;
  ValueChanged<int> selectedDestination;
  BottomMenu(
      {super.key, required this.selectedDestination, this.currentPageIndex});

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = (brightness == Brightness.dark);
    return NavigationBar(
      onDestinationSelected: selectedDestination,
      indicatorColor: isDarkMode ? Color(0xFF4A4459) : Color(0xFFD1BDF2),
      selectedIndex: currentPageIndex,
      destinations: const <Widget>[
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.explore),
          icon: Icon(Icons.explore_outlined),
          label: 'Community',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.pets),
          icon: Icon(Icons.pets_outlined),
          label: 'Adopt',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.storefront),
          icon: Icon(Icons.storefront_outlined),
          label: 'Shop',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.person),
          icon: Icon(Icons.person_outline),
          label: 'Profile',
        ),
      ],
    );
  }
}
