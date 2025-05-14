import 'package:flutter/material.dart';
import 'package:pawfect/supabase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'app.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

int? initScreen;
Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: SupabaseOptions.SUPABASE_URL,
    anonKey: SupabaseOptions.SUPABASE_ANON_KEY
  );
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  SharedPreferences prefs = await SharedPreferences.getInstance();
  initScreen = prefs.getInt('initScreen');
  //await prefs.setInt("initScreen", 1);
  debugPrint('initScreen $initScreen');
  runApp(App());
}