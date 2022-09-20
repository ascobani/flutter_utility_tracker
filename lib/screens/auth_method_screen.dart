import 'package:flutter/material.dart';
import 'package:flutter_utility_tracker/widgets/auth_method_screen_widgets/auth_method_card_button.dart';

class AuthMethodScreen extends StatelessWidget {
  static const routeName = '/auth-method-screen';

  const AuthMethodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          SizedBox(
            width: 410,
            height: 500,
            child: Card(
              color: Theme.of(context).colorScheme.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: SizedBox(
                child: Image.asset('assets/images/house.png'),
              ),
            ),
          ),
          const SizedBox(height: 60),
          const Center(
            child: Text(
              'Discover the best way to save money',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
