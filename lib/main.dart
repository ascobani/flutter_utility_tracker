import 'package:flutter/material.dart';

import './screens/start_screen.dart';
import './screens/bills_screen.dart';
import './screens/report_issue_screen.dart';
import './screens/setting_screen.dart';

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
      home: const Scaffold(
        body: StartScreen(),
      ),
      routes: {
        StartScreen.routeName: (context) => const StartScreen(),
        ReportIssueScreen.routeName: (context) => ReportIssueScreen(),
        BillsScreen.routeName: (context) => BillsScreen(),
      },
    );
  }
}
