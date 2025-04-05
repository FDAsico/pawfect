import 'package:flutter/material.dart';

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
            onPressed: () => (), 
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
      body: PageView(

      ),
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
            icon: Badge(child: Icon(Icons.notifications_outlined)),
            selectedIcon: Badge(child: Icon(Icons.notifications_sharp)),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Badge(label: Text('2'), child: Icon(Icons.messenger_outline_outlined)),
            selectedIcon: Badge(label: Text('2'), child: Icon(Icons.messenger_sharp)),
            label: 'Chats',
          ),
        ],
      ),
    );
  }
}