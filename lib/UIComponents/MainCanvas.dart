import 'package:flutter/material.dart';
import 'MainBar.dart';
import 'EMIScreenWidget.dart';

class MainCanvas extends StatelessWidget {
  const MainCanvas({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      appBar: MainBar(),
      body: EMIScreenWidget(),
    );
  }
}
