import 'dart:math';

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
    var size = MediaQuery.of(context).size;
    double _width1 = size.width * 0.002325581395348837;
    double _width5 = size.width * 0.011627906976744186;
    double _width10 = size.width * 0.023255813953488372;
    double _width20 = size.width * 0.046511627906976744;
    double _width30 = size.width * 0.06976744186046512;
    double _width40 = size.width * 0.09302325581395349;
    double _height1 = size.width * 0.0010729613729614;
    double _height5 = size.height * 0.005364806864807;
    double _height10 = size.height * 0.0107296137296139999;
    double _height20 = size.height * 0.0214592274592279999;
    double _height30 = size.height * 0.032188841188841;
    double _height40 = size.height * 0.047718454918455;

    int selected = 1;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Theme.of(context).colorScheme.background,
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 5),
          child: SizedBox(
            height: max(50, _height40 + _height10),
            width: max(370, 9 * _width40 + _width10),
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
                  fontSize: max(20, _width20 + _width5),
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        toolbarHeight: min(50, _height40 + _height10),
        flexibleSpace: SafeArea(
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 15.0),
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
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.handyman,
                size: max(80, 2 * _width40 + _width20),
              ),
              Text(
                'Report',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: min(40, _width40),
                ),
              ),
              Text(
                'an issue',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: min(40, _width40),
                ),
              ),
              SizedBox(
                height: min(11, _height10 + _height1),
              ),
              Text(
                'Sorry to hear that you have a problem.                         Our technicians is here to help you.',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: min(
                    17,
                    _width10 + _width5 + 2 * _width1,
                  ),
                ),
              ),
              SizedBox(
                height: min(50, _height40 + _height10),
              ),
              Text(
                'Property',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: min(17, _width10 + _width5 + 2 * _width1),
                ),
              ),
              SizedBox(
                height: min(10, _height10),
              ),
              SizedBox(
                width: double.infinity,
                height: max(100, 2 * _height40 + _height20),
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Address',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: min(13, _width10 + 3 * _width1),
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_horiz_sharp,
                                size: max(20, _width20),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Gayrettepe, Istanbul',
                          style: TextStyle(
                              fontSize:
                                  min(17, _width10 + _width5 + 2 * _width1),
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: min(
                  25,
                  _height20 + _height5,
                ),
              ),
              Text(
                'Type of issue',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: min(17, _width10 + _width5 + 2 * _width1),
                ),
              ),
              SizedBox(
                height: min(
                  15,
                  _height10 + _height5,
                ),
              ),
              CheckBoxCard(
                selectedValue: selected,
                icon1: Icons.home_outlined,
                text1: 'In-home',
                text2: 'I have an issue in my apartment',
                icon2: Icons.commute_outlined,
                text3: 'Communal',
                text4: 'This is an issue in public space',
              )
            ],
          ),
        ),
      ),
    );
  }
}
