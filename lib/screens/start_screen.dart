import 'package:flutter/material.dart';

import 'package:flutter_utility_tracker/screens/sign_in_auth_form.dart';

class StartScreen extends StatelessWidget {
  static const routeName = '/start-screen';

  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.primary,
        toolbarHeight: 0,
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Theme.of(context).colorScheme.primary,
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 5.0),
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.onPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                //TODO: Navigate to AuthMethodScreen
                Navigator.of(context)
                    .pushReplacementNamed(SignInAuthScreen.routeName);
              },
              child: Text(
                'Let\'s Start',
                style: TextStyle(
                  fontSize: size.width * 0.05,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  color: Theme.of(context).colorScheme.onBackground,
                  child: IconButton(
                    onPressed: () {
                      //TODO: Add functionality to the button
                    },
                    icon: const Icon(Icons.house_outlined, color: Colors.black),
                    iconSize: size.width * 0.09299,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      'Utility Tracker',
                      style: TextStyle(
                        fontSize: size.width * 0.0348,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: SizedBox(
                width: double.infinity,
                child: Image.asset('assets/images/house.png'),
              ),
            ),
            const Spacer(),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Save with us!'),
            ),
            SizedBox(height: size.height * 0.01),
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'Dont\'t be afraid to look at your bills!',
                  style: TextStyle(
                    fontSize: size.width * 0.0818,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'We can help you deal with your bills and you don\'t miss anf payment! Easy and quick you can track readings of all your utility meters in one place.',
                  style: TextStyle(
                    fontSize: size.width * 0.0451,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
