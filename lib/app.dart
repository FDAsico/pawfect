import 'package:flutter/material.dart';
import 'package:pawfect/screens/login/login.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'screens/home/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pawfect Naga',
      home: Login(),
      theme: ThemeData(
        colorScheme: ColorScheme.light(
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
    );
  }
}
