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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        toolbarHeight: 70,
        flexibleSpace: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  children: const [
                    Text('Welcome back,',
                        style: TextStyle(color: Colors.black45, fontSize: 15)),
                    //TODO:FireBase: Get user name
                    Text('John Doe',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SlideTransition(
                position: !_isScrolled
                    ? Tween<Offset>(
                            begin: Offset.zero, end: const Offset(1, 0))
                        .animate(_animationController1)
                    : Tween<Offset>(
                            begin: const Offset(0.71999, 0), end: Offset.zero)
                        .animate(_animationController),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right:10.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor:
                            Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:20.0),
                      child: SizedBox(
                        width: 170,
                        height: 64,
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
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        DateFormat.MMM()
                                            .format(DateTime.now())
                                            .toString(),
                                        style: const TextStyle(
                                            fontSize: 10,
                                            color: Colors.white54)),
                                    const SizedBox(height: 5),
                                    Text(
                                      '₺3628.65',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: Card(
                                  elevation: 0,
                                  color:
                                      Theme.of(context).colorScheme.primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Pay',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 2,
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
        child: const Icon(Icons.handyman),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            SizedBox(
              width: 390,
              height: 200,
              child: Card(
                elevation: 0,
                color: Theme.of(context).colorScheme.secondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    SizedBox(
                      width: 380,
                      child: Row(
                        children: [
                          const SizedBox(width: 15),
                          Text(
                              DateFormat.MMMM()
                                  .format(DateTime.now())
                                  .toString(),
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.white54)),
                          const Spacer(),
                          const Text('Due in 5 days',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.white54)),
                          const SizedBox(width: 20),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            ' ₺3628.65',
                            style: const TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 360,
                      height: 53,
                      child: Card(
                        elevation: 0,
                        color: Theme.of(context).colorScheme.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: SizedBox(
                          width: 100,
                          height: 30,
                          child: Center(
                            child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Pay now',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
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
                  const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
              child: Row(
                children: [
                  const Text('Messages',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
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
