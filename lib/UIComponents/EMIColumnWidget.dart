import 'package:flutter/material.dart';
import 'TextfieldWidget.dart';
import 'EMISlider.dart'; // Assuming the file name is EMISlider.dart

class EMIColumnWidget extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final int maxLength;
  final double min;
  final double max;

  const EMIColumnWidget({
    super.key,
    required this.labelText,
    required this.controller,
    required this.maxLength,
    required this.min,
    required this.max,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: Colors.black, // Set shadow color
      margin: EdgeInsets.all(10),
      color: Colors.grey[700],
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextfieldWidget(labelText: labelText, controller: controller , maxLength: maxLength),
            EMISilder(controller: controller, min: min, max: max)
          ],
        ),
      ),
    );
  }
}
