import 'package:flutter/material.dart';

class EMISilder extends StatefulWidget {
  final TextEditingController controller;
  final double min;
  final double max;

  const EMISilder({
    Key? key,
    required this.controller,
    required this.min,
    required this.max,
  }) : super(key: key);

  @override
  EMISilderState createState() => EMISilderState();
}

class EMISilderState extends State<EMISilder> {
  double homeLoanAmount = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Slider(
          value: homeLoanAmount,
          min: widget.min,
          max: widget.max,
          onChanged: (newValue) {
            setState(() {
              homeLoanAmount = newValue;
              widget.controller.text = newValue.toStringAsFixed(0);
            });
          },
          activeColor: Colors.white, // Set properties here
          inactiveColor: Colors.black,
          thumbColor: Colors.white,
        ),
      ],
    );
  }
}
