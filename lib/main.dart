import 'package:flutter/material.dart';
import 'package:menuui/bodyTab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF9F9F9),
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leadingWidth: 70,
          centerTitle: true,
          backgroundColor: const Color(0xFFF9F9F9),
          title: Image.asset(
            'assets/icons/ic_logo.png',
            width: 32,
            height: 32,
            fit: BoxFit.cover,
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/icons/ic_back.png",
                height: 32,
                width: 32,
              ),
            ),
          ),
          actions: [Image.asset("assets/icons/ic_options.png")],
        ),
        body: const BodyTab(),
      ),
    );
  }
}
