import 'package:flutter/material.dart';
import 'package:flutter_utility_tracker/screens/setting_screen.dart';

import './screens/start_screen.dart';
import './screens/auth_method_screen.dart';
import './screens/bills_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Utility Tracker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xffffe6ab),
          onPrimary: const Color(0xFF000000),
          secondary: const Color(0xFF25211C),
          onSecondary: const Color(0xFFEBEBEB),
          background: const Color(0xFFF7F6F0),
          onBackground: const Color(0xFFFFFFFF),
        ),
      ),
      home: Scaffold(
        body: BillsScreen(),
      ),
      routes: {
        StartScreen.routeName: (context) => const StartScreen(),
        AuthMethodScreen.routeName: (context) => const AuthMethodScreen(),
      },
    );
  }
}
