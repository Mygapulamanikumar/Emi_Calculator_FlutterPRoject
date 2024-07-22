import 'package:flutter/material.dart';
import 'UIComponents/MainCanvas.dart';

class MainUIWidget extends StatelessWidget {
  const MainUIWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainCanvas(),
    );
  }
}