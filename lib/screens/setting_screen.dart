import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:math';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 50,
            backgroundColor: Theme.of(context).colorScheme.background,
            elevation: 0,
            toolbarHeight: 70,
            flexibleSpace: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          const Text('Welcome back,',
                              style: TextStyle(
                                  color: Colors.black45, fontSize: 15)),
                          //TODO:FireBase: Get user name
                          const Text('John Doe',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
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
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
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
          ]))
        ],
      ),
    );
  }
}
