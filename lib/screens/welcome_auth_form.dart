import 'package:flutter/material.dart';

class WelcomeAuthScreen extends StatelessWidget {
  const WelcomeAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Welcome to Utility Tracker!',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 30),
        Text(
          'Here will connect you with experts or specialists in various fields, so you can get consultation vie text message or video call. Or be specialist to help people and eran money',
          style: TextStyle(color: Colors.black54, fontSize: 16),
          strutStyle: StrutStyle(height: 1.7),
        ),
      ],
    );
  }
}
