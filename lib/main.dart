import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app.dart';

int initScreen = 0;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final initScreen = prefs.getInt('initScreen');
  await prefs.setInt("initScreen", 1);
  debugPrint('initScreen $initScreen');
  runApp(App());
}