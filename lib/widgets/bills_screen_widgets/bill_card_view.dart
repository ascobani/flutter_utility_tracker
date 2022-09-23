import 'dart:math';

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
    var size = MediaQuery.of(context).size;
    double _width1 = size.width * 0.002325581395348837;
    double _width5 = size.width * 0.011627906976744186;
    double _width10 = size.width * 0.023255813953488372;
    double _width20 = size.width * 0.046511627906976744;
    double _width30 = size.width * 0.06976744186046512;
    double _width40 = size.width * 0.09302325581395349;
    double _height1 = size.width * 0.0019729613729614;
    double _height5 = size.height * 0.006964806864807;
    double _height10 = size.height * 0.0107296137296139999;
    double _height20 = size.height * 0.0214592274592279999;
    double _height30 = size.height * 0.033188841188841;
    double _height40 = size.height * 0.047718454918455;
    return SizedBox(
      height: max( 135 ,5 * _height30 + _height5 + _height1),
      width: 6 * _width30 + _width10 + _width5,
      child: Card(
        elevation: 0,
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
                    radius: _width20,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    child: Icon(
                      billIcon,
                      color: Colors.black,
                      size: _width20 + _width5,
                    ),
                  ),
                ),
              ),
              SizedBox(height: _height10),
              Padding(
                padding: EdgeInsets.only(top: _height20, left: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '₺$billAmount',
                    style: TextStyle(
                      fontSize: _height20 + _width5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    billName,
                    style: TextStyle(
                      fontSize: _width10 + 3 * _width1,
                      color: Colors.black45,
                    ),
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
