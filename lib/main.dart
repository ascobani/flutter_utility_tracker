import 'package:flutter/material.dart';


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
          primary: const Color(0xFFFFE6AB),
          onPrimary: const Color(0x2C292100),
          secondary: const Color(0x2A252000),
          onSecondary: const Color(0xFFEBEBEB),
          background: const Color(0xFFF7F6F0),
          onBackground: const Color(0xFFFFFFFF),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Utility Tracker'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
