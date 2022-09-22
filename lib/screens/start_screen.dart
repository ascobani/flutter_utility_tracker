import 'package:flutter/material.dart';
import 'package:flutter_utility_tracker/screens/bills_screen.dart';

class StartScreen extends StatelessWidget {
  static const routeName = '/start-screen';

  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Theme.of(context).colorScheme.primary,
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20.0),
          child: SizedBox(
            height: 50,
            width: 370,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.onPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                //TODO: Navigate to AuthMethodScreen
                Navigator.of(context).pushReplacementNamed(BillsScreen.routeName);
              },
              child: Text(
                'Let\'s Start',
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        children: <Widget>[
          const SizedBox(height: 70),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
                  iconSize: 40,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              const SizedBox(width: 300),
              const RotatedBox(
                quarterTurns: 1,
                child: Text(
                  'Utility Tracker',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45,
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: SizedBox(
              width: 370,
              child: Image.asset('assets/images/house.png'),
            ),
          ),
          const SizedBox(height: 50),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Save with us!'),
            ),
          ),
          const SizedBox(height: 10),
          const SizedBox(
            width: 370,
            child: Text(
              'Dont\'t be afraid to look at your bills!',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const SizedBox(
            width: 370,
            child: Text(
              'We can help you deal with your bills and you don\'t miss anf payment! Easy and quick you can track readings of all your utility meters in one place.',
              style: TextStyle(
                fontSize: 19,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
