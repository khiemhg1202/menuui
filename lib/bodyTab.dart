// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menuui/tabs/first_tab.dart';
import 'package:menuui/tabs/second_tab.dart';

class BodyTab extends StatefulWidget {
  const BodyTab({Key? key}) : super(key: key);

  @override
  State<BodyTab> createState() => _BodyTabState();
}

class _BodyTabState extends State<BodyTab> {
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                bottom: 12,
                left: 16,
                right: 16,
              ),
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFFFFFFF),
                ),
                child: TabBar(
                  tabs: const [Text("Following"), Text("Follower")],
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  labelStyle: GoogleFonts.dmSans(
                      fontSize: 14, height: 3, fontWeight: FontWeight.w700),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFFCA34D),
                  ),
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  // 1st
                  FirstTab(),
                  //2st
                  SecondTab()
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFFFFFFFF),
          currentIndex: _currentIndex,
          selectedIconTheme: IconThemeData(
              color: Colors.orange.shade400, opacity: 1.0, size: 32),
          unselectedIconTheme: const IconThemeData(
              color: Colors.black54, opacity: 0.5, size: 28),
          showSelectedLabels: false,
          showUnselectedLabels: false,
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
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ));
}
