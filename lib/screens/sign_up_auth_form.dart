import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class SignUpAuthScreen extends StatefulWidget {
  const SignUpAuthScreen({super.key});

  @override
  State<SignUpAuthScreen> createState() => _SignUpAuthScreenState();
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Create an Account',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Create an account so you can use Utility Tracker',
          style: TextStyle(color: Colors.black54),
        ),
        const SizedBox(height: 25),
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
                  color: Theme.of(context).colorScheme.background, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.primary, width: 2),
            ),
            prefixIcon:
                Icon(Icons.mail, color: Theme.of(context).colorScheme.primary),
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
                  color: Theme.of(context).colorScheme.background, width: 2),
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
        const SizedBox(height: 10),
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
                      color: Theme.of(context).colorScheme.primary, width: 2),
                ),
                prefixIcon: Icon(Icons.lock,
                    color: Theme.of(context).colorScheme.primary),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    _showPassword = !_showPassword;
                  });
                },
                icon: Icon(
                  _showPassword ? Icons.visibility_off : Icons.visibility,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
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
                      color: Theme.of(context).colorScheme.primary, width: 2),
                ),
                prefixIcon: Icon(Icons.lock,
                    color: Theme.of(context).colorScheme.primary),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    _showPassword = !_showPassword;
                  });
                },
                icon: Icon(
                  _showPassword ? Icons.visibility_off : Icons.visibility,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
