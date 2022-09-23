import 'package:flutter/material.dart';
import 'package:flutter_utility_tracker/screens/sign_in_auth_form.dart';
import 'package:flutter_utility_tracker/screens/sign_up_auth_form.dart';

class WelcomeAuthScreen extends StatelessWidget {
  const WelcomeAuthScreen({super.key});

  static const routeName = '/welcome-auth-screen';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.background,
        toolbarHeight: 20,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'Welcome to Utility Tracker!',
              style: TextStyle(
                fontSize: size.width * 0.1157,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.033),
            Text(
              'Here will connect you with experts or specialists in various fields, so you can get consultation vie text message or video call. Or be specialist to help people and eran money',
              style: TextStyle(
                color: Colors.black54,
                fontSize: size.width * 0.037,
              ),
              strutStyle: StrutStyle(
                height: size.width * 0.0037,
              ),
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
                    Navigator.of(context)
                        .pushReplacementNamed(SignUpAuthScreen.routeName);
                  },
                  child: const Text('Create an Account'),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            const Center(
              child: Text('or Sign Up with'),
            ),
            SizedBox(height: size.height * 0.01),
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
                SizedBox(width: size.height * 0.014),
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
            SizedBox(height: size.height * 0.023),
          ],
        ),
      ),
    );
  }
}
