import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_utility_tracker/screens/bills_screen.dart';
import 'package:flutter_utility_tracker/screens/sign_in_auth_form.dart';

class SignUpAuthScreen extends StatefulWidget {
  const SignUpAuthScreen({super.key});

  @override
  State<SignUpAuthScreen> createState() => _SignUpAuthScreenState();
  static const routeName = '/sign-up-auth-screen';
}

class _SignUpAuthScreenState extends State<SignUpAuthScreen> {
  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();
  final FocusNode _focusNode3 = FocusNode();
  final FocusNode _focusNode4 = FocusNode();

  // CheckBox ShowPassword
  late bool _showPassword = false;

  // UserEmail
  String _userEmail = '';

  // UserName
  String _username = '';

  // UserPassword
  String _userPassword = '';

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
              'Create an Account',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: size.width * 0.07, // fontSize: 30
              ),
            ),
            SizedBox(height: size.height * 0.022), // height: 20
            Text(
              'Create an account so you can use Utility Tracker',
              style: TextStyle(
                color: Colors.black54,
                fontSize: size.width * 0.033, //fontSize: 16
              ),
            ),
            SizedBox(height: size.height * 0.0275), // height: 25
            //e-mail input
            TextFormField(
              focusNode: _focusNode1,
              textCapitalization: TextCapitalization.none,
              enableSuggestions: false,
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              key: const ValueKey('email'),
              validator: (value) {
                if (value!.isEmpty) {
                  if (kDebugMode) {
                    print('Email is empty');
                  }
                  return 'Please provide an email address';
                } else if (!value.contains('@')) {
                  if (kDebugMode) {
                    print('Email is invalid');
                  }
                  return 'Please provide a valid email address';
                }
                return null;
              },
              onSaved: (value) {
                _userEmail = value!;
              },
              decoration: InputDecoration(
                labelText: 'Email address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.background,
                      width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary, width: 2),
                ),
                prefixIcon: Icon(
                  Icons.mail,
                  color: Theme.of(context).colorScheme.primary,
                  size: size.width * 0.055,
                ),
              ),
            ),
            const SizedBox(height: 10),
            //username input
            TextFormField(
              focusNode: _focusNode2,
              textCapitalization: TextCapitalization.none,
              enableSuggestions: false,
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              key: const ValueKey('username'),
              validator: (value) {
                if (value!.isEmpty) {
                  if (kDebugMode) {
                    print('Username is empty');
                  }
                  return 'Please provide a username';
                } else if (value.length < 4) {
                  if (kDebugMode) {
                    print('Username is too short');
                  }
                  return 'Username must be at least 4 characters long';
                }
                return null;
              },
              onSaved: (value) {
                _username = value!;
              },
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.background,
                      width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary, width: 2),
                ),
                prefixIcon: Icon(Icons.account_circle,
                    color: Theme.of(context).colorScheme.primary),
              ),
            ),
            SizedBox(height: size.height * 0.011), // 20
            //password input
            Stack(
              children: [
                TextFormField(
                  obscureText: !_showPassword ? true : false,
                  focusNode: _focusNode3,
                  textCapitalization: TextCapitalization.none,
                  enableSuggestions: false,
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  key: const ValueKey('password'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      if (kDebugMode) {
                        print('Password is empty');
                      }
                      return 'Please provide a password';
                    } else if (value.length < 7) {
                      if (kDebugMode) {
                        print('Password is too short');
                      }
                      return 'Password must be at least 7 characters long';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _userPassword = value!;
                  },
                  decoration: InputDecoration(
                    labelText: 'Password',
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
                          width: 2),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Theme.of(context).colorScheme.primary,
                      size: size.width * 0.055,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    children: [
                      SizedBox(height: size.height * 0.0055), // 20
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
                          size: size.width * 0.055,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.011), // 20
            //confirm password input
            Stack(
              children: [
                TextFormField(
                  obscureText: !_showPassword ? true : false,
                  focusNode: _focusNode4,
                  textCapitalization: TextCapitalization.none,
                  enableSuggestions: false,
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  key: const ValueKey('confirmPassword'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      if (kDebugMode) {
                        print('Confirm Password is empty');
                      }
                      return 'Please confirm your password';
                    } else if (value == _userPassword) {
                      if (kDebugMode) {
                        print('Confirm Password is not match');
                      }
                      return 'Password does not match';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
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
                          width: 2),
                    ),
                    prefixIcon: Icon(Icons.lock,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    children: [
                      SizedBox(height: size.height * 0.0055), // 5
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
                    'Create an Account',
                    style: TextStyle(
                      fontSize: size.width * 0.033, //fontSize: 16
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.022), // 20
            Center(
              child: Text(
                'or Sign Up with',
                style: TextStyle(
                  fontSize: size.width * 0.033, //fontSize: 16
                ),
              ),
            ),
            SizedBox(height: size.height * 0.011), // 10
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
                SizedBox(width: size.height * 0.011), // 10
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
                  'Already have an account',
                  style: TextStyle(
                    fontSize: size.width * 0.033, //fontSize: 16
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(SignInAuthScreen.routeName);
                  },
                  child:  Text(
                    'Sign In',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.width * 0.033, //fontSize: 16
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.022), // 20
          ],
        ),
      ),
    );
  }
}
