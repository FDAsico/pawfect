import 'package:flutter/material.dart';
import 'package:pawfect/screens/login/login.dart';
// import 'screens/home/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}
