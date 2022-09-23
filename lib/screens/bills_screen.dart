import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_utility_tracker/screens/report_issue_screen.dart';
import 'package:intl/intl.dart';

import '../widgets/bills_screen_widgets/expens_card_view.dart';
import '../widgets/bills_screen_widgets/bill_messages_card_view.dart';

class BillsScreen extends StatefulWidget {
  static const routeName = '/bills-screen';

  const BillsScreen({super.key});

  @override
  State<BillsScreen> createState() => _BillsScreenState();
}

class _BillsScreenState extends State<BillsScreen>
    with TickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  late AnimationController _animationController;
  late AnimationController _animationController1;

  bool _isScrolled = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(0.011627906976744186 / 5);

    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
    _animationController1 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));

    _scrollController.addListener(() {
      if (_scrollController.position.pixels >= 180) {
        setState(() {
          _isScrolled = true;
          _animationController.forward();
          _animationController1.reverse();
        });
      } else {
        setState(() {
          _animationController.reverse();
          _animationController1.forward();
        });
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        toolbarHeight: 2 * _height40 + _height5,
        flexibleSpace: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: 10.0, left: 10.0, bottom: 10.0, top: 10.0),
                child: Column(
                  children: [
                    Text(
                      'Welcome back,',
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: size.width * 0.033, // fontSize: 16,
                      ),
                    ),
                    //TODO:FireBase: Get user name
                    Text(
                      'John Doe',
                      style: TextStyle(
                        fontSize: size.width * 0.0515, // fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SlideTransition(
                position: !_isScrolled
                    ? Tween<Offset>(
                        begin: Offset.zero,
                        end: const Offset(1, 0),
                      ).animate(_animationController1)
                    : Tween<Offset>(
                            begin: Offset(_width1 * 0.84399, 0),
                            end: Offset.zero)
                        .animate(_animationController),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: CircleAvatar(
                        radius: _width20 + _width5, // radius: 22,
                        backgroundColor: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: SizedBox(
                        width: max(
                          155,
                          4 * _height40 + _width5,
                        ),
                        // width: 170,
                        height: min(
                          64,
                          _height40 + _height20 + _height10 + _height5,
                        ),
                        // height: 64,
                        child: Card(
                          elevation: 0,
                          color: Theme.of(context).colorScheme.secondary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        DateFormat.MMM()
                                            .format(DateTime.now())
                                            .toString(),
                                        style: TextStyle(
                                            fontSize: _width10,
                                            color: Colors.white54)),
                                    SizedBox(height: _height5),
                                    Text(
                                      '₺3628.65',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            _width10 + _height5 + 3 * _width1,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: _width10),
                              SizedBox(
                                width: max(_width40 + _width10, 30),
                                height: max(30, _height40 + _height10),
                                child: Card(
                                  elevation: 0,
                                  color: Theme.of(context).colorScheme.primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Pay',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: max(
                                          10,
                                          _width10 + 2 * _width1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .restorablePushReplacementNamed(ReportIssueScreen.routeName);
        },
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: Icon(
          Icons.handyman,
          size: _width20 + _width5,
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: _height10),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: SizedBox(
                width: double.infinity,
                height: max(
                    170, 4 * _height40 + _height20 + _height10 + 6 * _height1),
                child: Card(
                  elevation: 0,
                  color: Theme.of(context).colorScheme.secondary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: _height30),
                      SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(right: 11.0, left: 11.0),
                          child: Row(
                            children: [
                              Text(
                                DateFormat.MMMM()
                                    .format(DateTime.now())
                                    .toString(),
                                style: TextStyle(
                                  fontSize: _width10 + _width5,
                                  color: Colors.white54,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                'Due in 5 days',
                                style: TextStyle(
                                  fontSize: _width10 + _width5,
                                  color: Colors.white54,
                                ),
                              ),
                              SizedBox(width: _width20),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              ' ₺3628.65',
                              style: TextStyle(
                                fontSize: _width40 + _width10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: _height10),
                      SizedBox(
                        width: min(360, 9 * _width40),
                        height: _height40 + _height10 + 3 * _height1,
                        child: Card(
                          elevation: 0,
                          color: Theme.of(context).colorScheme.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Pay now',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: min(
                                    16,
                                    _width10 + _width5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: _height20),
            Row(
              children: [
                SizedBox(width: _width20),
                ExpensesCardView(
                  electricityBill: 989.23,
                  waterBill: 451.56,
                  naturalGasBill: 1987.87,
                  internetBill: 199.99,
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
              child: Row(
                children: [
                  Text(
                    'Messages',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: _width10 + _width5,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: _width10 + _width5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BillMessagingCardView(
                sender: 'Andrea Cotes',
                sendTime: DateTime.now(),
                message: 'Problem with how water'),
            BillMessagingCardView(
                sender: 'Andrea Cotes',
                sendTime: DateTime.now(),
                message: 'Problem with how water'),
            BillMessagingCardView(
                sender: 'Andrea Cotes',
                sendTime: DateTime.now(),
                message: 'Problem with how water'),
            BillMessagingCardView(
                sender: 'Andrea Cotes',
                sendTime: DateTime.now(),
                message: 'Problem with how water'),
            BillMessagingCardView(
                sender: 'Andrea Cotes',
                sendTime: DateTime.now(),
                message: 'Problem with how water'),
          ],
        ),
      ),
    );
  }
}
