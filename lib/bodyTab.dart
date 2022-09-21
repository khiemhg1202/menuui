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
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                bottom: 16,
                left: 0,
                right: 0,
              ),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFFFFFFF),
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
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ));
}
