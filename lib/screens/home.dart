import 'package:flutter/material.dart';
import 'package:pawfect/screens/adoptpage.dart';
import 'package:pawfect/screens/discoverpage.dart';
import 'package:pawfect/screens/homepage.dart';
import 'package:pawfect/screens/notifications.dart';
import 'package:pawfect/screens/profilepage.dart';
import 'package:pawfect/screens/shoppage.dart';

/* 
Authored by: Francis Dave A. Asico
Company: JaCode Facctory
Project: Pawfect Naga
Feature: [PAW-7] Home Screen
Description: Home screen for users who are able to login
*/

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentPageIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const DiscoverPage(),
    const AdoptPage(),
    const ShopPage(),
    const ProfilePage()
  ];
  
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = (brightness == Brightness.dark);
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () { Scaffold.of(context).openDrawer(); },
              icon: const Icon(Icons.menu),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          }
        ),
        title: currentPageIndex == 0 ? Text(
          'How are you doing today?',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.normal,
            ),
          ) : null, 
        actionsPadding: EdgeInsets.only(right: 15.0),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Notifications())), 
            icon: Icon(Icons.notifications_outlined),
            splashRadius: 8,
            style: ButtonStyle(
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              )
            ),
          ),
          IconButton(
            onPressed: () => (), 
            icon: Icon(Icons.shopping_cart_outlined),
            splashRadius: 8,
            style: ButtonStyle(
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              )
            ),
          )
        ],
      ),
      drawer: Drawer(),
      body: _pages[currentPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: isDarkMode? Color(0xFF4A4459) : Color(0xFFD1BDF2),
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
      ),
    );
  }
}