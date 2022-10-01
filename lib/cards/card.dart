import 'package:flutter/material.dart';
import 'mycard.dart';

class TabCard extends StatelessWidget {
  const TabCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: MyCard(),
    ));
  }
}
