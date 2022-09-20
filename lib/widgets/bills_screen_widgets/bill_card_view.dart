import 'package:flutter/material.dart';

class BillCardView extends StatelessWidget {
  String billName;
  double billAmount;
  IconData billIcon;

  BillCardView({
    super.key,
    required this.billName,
    required this.billAmount,
    required this.billIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 156,
      width: 195,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  left: 8.0,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    child: Icon(
                      billIcon,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '₺$billAmount',
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    billName,
                    style: const TextStyle(fontSize: 13, color: Colors.black45),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
