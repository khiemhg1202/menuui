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
      title: 'Flutter Demo',
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
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 70,
        centerTitle: true,
        backgroundColor: const Color(0xFFF9F9F9),
        title: Container(
          child: Image.asset(
            'assets/icons/ic_logo.png',
            width: 32,
            height: 32,
            fit: BoxFit.cover,
          ),
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
      body: const bodyTab(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        selectedIconTheme: IconThemeData(
            color: Colors.orange.shade200, opacity: 1.0, size: 45),
        unselectedIconTheme:
            const IconThemeData(color: Colors.black, opacity: 0.5, size: 25),
        items: [
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/ic_home.png"), label: "Home"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/ic_user.png"), label: "User"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/ic_chat.png"), label: "Chat"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/ic_save.png"), label: "Save"),
        ],
      ),
    );
  }
}
