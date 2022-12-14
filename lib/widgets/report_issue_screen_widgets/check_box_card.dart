import 'dart:math';

import 'package:flutter/material.dart';

class CheckBoxCard extends StatefulWidget {
  int selectedValue;
  bool isSelected = true;
  String text1;
  String text2;
  IconData icon1;
  String text3;
  String text4;
  IconData icon2;

  CheckBoxCard({
    required this.selectedValue,
    required this.icon1,
    required this.text1,
    required this.text2,
    required this.icon2,
    required this.text3,
    required this.text4,
  });

  @override
  State<CheckBoxCard> createState() => _CheckBoxCardState();
}

class _CheckBoxCardState extends State<CheckBoxCard> {
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
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              widget.isSelected = true;
            });
          },
          child: SizedBox(
            width: max(167.5, 6 * _width30 + _width10 + 2 * _width1),
            height: 165,
            child: Card(
              elevation: 0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: widget.isSelected
                    ? BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 2.0)
                    : const BorderSide(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          backgroundColor: widget.isSelected
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.background,
                          child: Icon(
                            widget.icon1,
                            color: Colors.black,
                          ),
                        ),
                        const Spacer(),
                        Checkbox(
                            activeColor: Colors.black,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            value: widget.isSelected,
                            onChanged: (_) {
                              setState(() {
                                widget.isSelected = true;
                              });
                            })
                      ],
                    ),
                    const SizedBox(height: 30),
                    Text(
                      widget.text1,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      widget.text2,
                      style:
                          const TextStyle(fontSize: 13, color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              widget.isSelected = false;
            });
          },
          child: SizedBox(
            width: max(167.5, 6 * _width30 + _width10 + 2 * _width1),
            height: 165,
            child: Card(
              elevation: 0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: !widget.isSelected
                    ? BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 2.0)
                    : const BorderSide(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          backgroundColor: !widget.isSelected
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.background,
                          child: Icon(
                            widget.icon2,
                            color: Colors.black,
                          ),
                        ),
                        const Spacer(),
                        Checkbox(
                            activeColor: Colors.black,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            value: !widget.isSelected,
                            onChanged: (_) {
                              setState(() {
                                widget.isSelected = false;
                              });
                            })
                      ],
                    ),
                    const SizedBox(height: 30),
                    Text(
                      widget.text3,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      widget.text4,
                      style:
                          const TextStyle(fontSize: 13, color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
