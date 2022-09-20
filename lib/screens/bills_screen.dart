import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:math';

import '../widgets/bills_screen_widgets/expens_card_view.dart';

class BillsScreen extends StatelessWidget {
  static const routeName = '/bills-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.handyman),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          Row(
            children: [
              const SizedBox(width: 20),
              Column(
                children: [
                  const Text('Welcome back,',
                      style: TextStyle(color: Colors.black45, fontSize: 15)),
                  //TODO:FireBase: Get user name
                  const Text('John Doe',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ],
              ),
              const Spacer(),
              CircleAvatar(
                radius: 30,
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 20),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 390,
            height: 200,
            child: Card(
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
                            DateFormat.MMMM().format(DateTime.now()).toString(),
                            style: const TextStyle(
                                fontSize: 15, color: Colors.white54)),
                        const Spacer(),
                        const Text('Due in 5 days',
                            style:
                                TextStyle(fontSize: 15, color: Colors.white54)),
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
                          ' ₺${Random().nextInt(1000)}',
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
                      color: Theme.of(context).colorScheme.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const SizedBox(
                        width: 100,
                        height: 30,
                        child: Center(
                          child: Text(
                            'Pay now',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
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
          const SizedBox(height: 20),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              ExpensesCardView(
                electricityBill: Random().nextInt(1000) + 0.99,
                waterBill: Random().nextInt(1000) + 0.99,
                naturalGasBill: Random().nextInt(1000) + 0.99,
                internetBill: Random().nextInt(1000) + 0.99,
              ),
            ],
          ),
        ],
      ),
    );
  }
}