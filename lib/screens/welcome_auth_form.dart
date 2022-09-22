import 'package:flutter/material.dart';
import 'package:flutter_utility_tracker/screens/sign_in_auth_form.dart';
import 'package:flutter_utility_tracker/screens/sign_up_auth_form.dart';

class WelcomeAuthScreen extends StatelessWidget {
  const WelcomeAuthScreen({super.key});

  static const routeName = '/welcome-auth-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              'Welcome to Utility Tracker!',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            const Text(
              'Here will connect you with experts or specialists in various fields, so you can get consultation vie text message or video call. Or be specialist to help people and eran money',
              style: TextStyle(color: Colors.black54, fontSize: 16),
              strutStyle: StrutStyle(height: 1.7),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 0,
                color: Theme.of(context).colorScheme.secondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(SignUpAuthScreen.routeName);
                  },
                  child: const Text('Create an Account'),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text('or Sign Up with'),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Card(
                    color: Theme.of(context).colorScheme.background,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: const BorderSide(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor:
                            Theme.of(context).colorScheme.background,
                        child: Image.asset('assets/images/apple_icon.png'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {},
                  child: Card(
                    color: Theme.of(context).colorScheme.background,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: const BorderSide(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor:
                            Theme.of(context).colorScheme.background,
                        child: Image.asset('assets/images/google_icon.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account'),
                TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(SignInAuthScreen.routeName);
                  },
                  child: const Text(
                    'Sign In',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
