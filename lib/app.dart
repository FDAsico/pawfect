import 'package:flutter/material.dart';
import 'package:pawfect/main.dart';
import 'package:pawfect/screens/login/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawfect/screens/onboarding/onbording.dart';
// import 'screens/home/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pawfect Naga',
      home: initScreen == 0 || initScreen == null ? OnBoarding() : Login(),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 91, 72, 139),
          primary: Color.fromARGB(255, 91, 72, 139),
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
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
          bodyMedium: GoogleFonts.poppins(),
          displaySmall: GoogleFonts.poppins(),
        ),
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
    );
  }
}
