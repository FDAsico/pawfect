import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:pawfect/main.dart';
import 'package:pawfect/screens/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawfect/screens/onbording.dart';
// import 'screens/home/home.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState(){
    super.initState();
    initialization();
  }
  void initialization() async {
    debugPrint('Pausing...');
    await Future.delayed(const Duration(seconds: 3));
    debugPrint('Unpausing');
    FlutterNativeSplash.remove();
  } 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Pawfect Naga',
      home: initScreen == 0 || initScreen == null ? OnBoarding() : Login(),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF5B488B),
          primary: Color(0xFF5B488B),
          // surface: Color(0xFFE4D7FD),
          //onPrimary: onPrimary,
          //secondary: secondary,
          //onSecondary: onSecondary,
        ),
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: GoogleFonts.poppins(
            fontSize: 36,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 91, 72, 139),
          ),
          bodyMedium: GoogleFonts.poppins(),
          displaySmall: GoogleFonts.poppins(),
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: Color(0xFF5B488B),
          //primary: Color(0xFF5B488B),
          //surface: Color(0xFFE4D7FD),
          //onPrimary: onPrimary,
          //secondary: secondary,
          //onSecondary: onSecondary,
        ),
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: GoogleFonts.poppins(
            fontSize: 36,
            fontWeight: FontWeight.w700,
            color: Color(0xFFD0BCFE),
          ),
          bodyMedium: GoogleFonts.poppins(),
          displaySmall: GoogleFonts.poppins(),
        ),
      ),
      themeMode: ThemeMode.system,
    );
  }
}
