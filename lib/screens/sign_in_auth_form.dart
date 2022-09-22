import 'package:flutter/material.dart';
import 'package:flutter_utility_tracker/screens/welcome_auth_form.dart';

class SignInAuthScreen extends StatefulWidget {

  static const routeName = '/sign-in-auth-screen';

  // UserEmail
  final String _userEmail = '';

  // UserName
  final String _username = '';

  // UserPassword
  final String _userPassword = '';

  const SignInAuthScreen({super.key});

  @override
  State<SignInAuthScreen> createState() => _SignInAuthScreenState();
}

class _SignInAuthScreenState extends State<SignInAuthScreen> {
  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();
  late bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .background,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome Back!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'We\'re happy to see. You can Login and continue consulting your problem or read some tips.',
              style: TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 25),
            TextFormField(
              focusNode: _focusNode1,
              textCapitalization: TextCapitalization.none,
              enableSuggestions: false,
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                      color: Theme
                          .of(context)
                          .colorScheme
                          .background,
                      width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                      color: Theme
                          .of(context)
                          .colorScheme
                          .primary, width: 2),
                ),
                prefixIcon: Icon(Icons.face,
                    color: Theme
                        .of(context)
                        .colorScheme
                        .primary),
              ),
            ),
            const SizedBox(height: 10),
            Stack(
              children: [
                TextFormField(
                  focusNode: _focusNode2,
                  textCapitalization: TextCapitalization.none,
                  enableSuggestions: false,
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                          color: Theme
                              .of(context)
                              .colorScheme
                              .background,
                          width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                          color: Theme
                              .of(context)
                              .colorScheme
                              .primary,
                          width: 2),
                    ),
                    prefixIcon: Icon(Icons.lock,
                        color: Theme
                            .of(context)
                            .colorScheme
                            .primary),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    children: [
                      const SizedBox(height: 5),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                        icon: Icon(
                          _showPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 0,
                color: Theme
                    .of(context)
                    .colorScheme
                    .secondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Sign In'),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text('or Sign In with'),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Card(
                    color: Theme
                        .of(context)
                        .colorScheme
                        .background,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: const BorderSide(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor:
                        Theme
                            .of(context)
                            .colorScheme
                            .background,
                        child: Image.asset('assets/images/apple_icon.png'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {},
                  child: Card(
                    color: Theme
                        .of(context)
                        .colorScheme
                        .background,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: const BorderSide(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor:
                        Theme
                            .of(context)
                            .colorScheme
                            .background,
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
                const Text('I don\'t have an account'),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(WelcomeAuthScreen.routeName);
                  },
                  child: const Text(
                    'Sign Up',
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
