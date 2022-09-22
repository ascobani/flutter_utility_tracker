import 'package:flutter/material.dart';
import 'package:flutter_utility_tracker/screens/bills_screen.dart';

import '../widgets/report_issue_screen_widgets/check_box_card.dart';

class ReportIssueScreen extends StatefulWidget {
  static const routeName = '/report-issue-screen';

  @override
  State<ReportIssueScreen> createState() => _ReportIssueScreenState();
}

class _ReportIssueScreenState extends State<ReportIssueScreen> {
  @override
  Widget build(BuildContext context) {
    int selected = 1;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Theme.of(context).colorScheme.background,
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
              },
              child: Text(
                'Next',
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 50,
        flexibleSpace: SafeArea(
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: SizedBox(
                height: 50,
                width: 50,
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: Colors.white,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(BillsScreen.routeName);
                    },
                    icon: const Icon(Icons.close_outlined),
                  ),
                ),
              ),
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.handyman, size: 100),
              const Text(
                'Report',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
              const Text(
                'an issue',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
              const SizedBox(height: 12),
              const Text(
                'Sorry to hear that you have a problem.                         Our technicians is here to help you.',
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              const SizedBox(height: 50),
              const Text(
                'Property',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 390,
                height: 100,
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0, left: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Address',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 13),
                            ),
                            const Spacer(),
                            IconButton(
                                onPressed: () {
                                  print(selected);
                                },
                                icon: const Icon(Icons.more_horiz_sharp))
                          ],
                        ),
                        Text(
                          'Gayrettepe, Istanbul',
                          style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                'Type of issue',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  CheckBoxCard(
                    selectedValue: selected,
                    icon1: Icons.home_outlined,
                    text1: 'In-home',
                    text2: 'I have an issue in my apartment',
                    icon2: Icons.commute_outlined,
                    text3: 'Communal',
                    text4: 'This is an issue in public space',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
