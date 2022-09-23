import 'package:flutter/material.dart';
import 'package:flutter_utility_tracker/screens/bills_screen.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: size.width * 0.07,
              ),
            ),
            SizedBox(height: size.height * 0.022),
            Text(
              'We\'re happy to see. You can Login and continue consulting your problem or read some tips.',
              style: TextStyle(
                color: Colors.black54,
                fontSize: size.width * 0.035,
              ),
            ),

            SizedBox(height: size.height * 0.025),
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
                    color: Theme.of(context).colorScheme.background,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.primary,
                    width: 2,
                  ),
                ),
                prefixIcon: Icon(Icons.face,
                    color: Theme.of(context).colorScheme.primary),
              ),
            ),
            SizedBox(height: size.height * 0.011),
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
                          color: Theme.of(context).colorScheme.background,
                          width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 2,
                      ),
                    ),
                    prefixIcon: Icon(Icons.lock,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    children: [
                      SizedBox(height: size.height * 0.0055),
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
                    fontSize: size.width * 0.035,
                  ),
                ),
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
                        .pushReplacementNamed(BillsScreen.routeName);
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: size.width * 0.035,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.022),
            Center(
              child: Text(
                'or Sign In with',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: size.width * 0.035,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.011),
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
                SizedBox(width: size.width * 0.022),
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
                Text(
                  'I don\'t have an account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width * 0.0313,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(WelcomeAuthScreen.routeName);
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.width * 0.0319,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.022),
          ],
        ),
      ),
    );
  }
}
