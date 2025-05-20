import 'package:flutter/material.dart';
import 'package:pawfect/screens/adoptpage.dart';
import 'package:pawfect/screens/community.dart';
import 'package:pawfect/screens/bottomnavbar.dart';
import 'package:pawfect/screens/homepage.dart';
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
    CommunityPage(),
    const PetAdoptPage(),
    const ShopPage(),
    const ProfilePage()
  ];

  void selectedDestination(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: currentPageIndex == 0
            ? Text(
                'How are you doing today?',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                ),
              )
            : currentPageIndex == 1 ? Text(
                'PAWFECT NAGA',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF5B488B)
                ),
              )
            : null,
        actionsPadding: EdgeInsets.only(right: 15.0),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/messaging'),
            icon: Icon(Icons.messenger_outline),
            splashRadius: 8,
            style: ButtonStyle(
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            )),
          ),
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/notification'),
            icon: Icon(Icons.notifications_outlined),
            splashRadius: 8,
            style: ButtonStyle(
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            )),
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
            )),
          )
        ],
      ),
      body: _pages[currentPageIndex],
      bottomNavigationBar: BottomMenu(selectedDestination: selectedDestination, currentPageIndex: currentPageIndex,),
    );
  }
}
