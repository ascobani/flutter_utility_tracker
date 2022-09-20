import 'package:flutter/material.dart';
import 'package:flutter_utility_tracker/widgets/bills_screen_widgets/bill_card_view.dart';

class ExpensesCardView extends StatelessWidget {
  double electricityBill;
  double waterBill;
  double naturalGasBill;
  double internetBill;

  ExpensesCardView({
    super.key,
    required this.electricityBill,
    required this.waterBill,
    required this.naturalGasBill,
    required this.internetBill,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              BillCardView(
                  billName: 'Electricity',
                  billAmount: electricityBill,
                  billIcon: Icons.electrical_services),
              BillCardView(
                  billName: 'Water',
                  billAmount: waterBill,
                  billIcon: Icons.water_drop),
            ],
          ),
          Row(
            children: [
              BillCardView(
                  billName: 'Natural Gas',
                  billAmount: naturalGasBill,
                  billIcon: Icons.gas_meter),
              BillCardView(
                  billName: 'Internet',
                  billAmount: internetBill,
                  billIcon: Icons.wifi),
            ],
          ),
        ],
      ),
    );
  }
}
