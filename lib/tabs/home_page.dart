import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         margin: const EdgeInsets.all(10),
         child: const Text(
          "Hello",
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
