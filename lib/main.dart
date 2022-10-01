import 'package:flutter/material.dart';
import 'package:menuui/cards/card.dart';
import 'package:menuui/tabs/tab_follow.dart';
import 'cards/mycard.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  final Widget _myHome = MyHome();
  final Widget _myUserFollow = UserFollow();
  final Widget _myChatUser = ChatUser();
  final Widget _mySaveJob = SaveJob();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 70,
        centerTitle: true,
        backgroundColor: const Color(0xFFF9F9F9),
        title: Image.asset(
          'assets/ic_logo.png',
          width: 32,
          height: 32,
          fit: BoxFit.cover,
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/ic_back.png",
              height: 32,
              width: 32,
            ),
          ),
        ),
        actions: [Image.asset("assets/ic_options.png")],
      ),
      body: getBody(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        selectedIconTheme: IconThemeData(
            color: Colors.orange.shade400, opacity: 1.0, size: 32),
        unselectedIconTheme:
            const IconThemeData(color: Colors.black54, opacity: 0.5, size: 28),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset("assets/ic_home.png"),
              label: "Home",
              activeIcon: Image.asset(
                "assets/ic_home.png",
                color: Colors.orange.shade400,
              )),
          BottomNavigationBarItem(
              icon: Image.asset("assets/ic_user.png"),
              label: "User",
              activeIcon: Image.asset(
                "assets/ic_user.png",
                color: Colors.orange.shade400,
              )),
          BottomNavigationBarItem(
              icon: Image.asset("assets/ic_chat.png"),
              label: "Chat",
              activeIcon: Image.asset(
                "assets/ic_chat.png",
                color: Colors.orange.shade400,
              )),
          BottomNavigationBarItem(
              icon: Image.asset("assets/ic_save.png"),
              label: "Save",
              activeIcon: Image.asset(
                "assets/ic_save.png",
                color: Colors.orange.shade400,
              )),
        ],
        onTap: (int index) {
          onTapHandler(index);
        },
      ),
    );
  }

  Widget getBody() {
    if (selectedIndex == 0) {
      return _myHome;
    } else if (selectedIndex == 1) {
      return _myUserFollow;
    } else if (selectedIndex == 2) {
      return _myChatUser;
    } else {
      return _mySaveJob;
    }
  }

  void onTapHandler(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Trang Home"));
  }
}

class UserFollow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabFollow();
  }
}

class ChatUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("3"));
  }
}

class SaveJob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabCard();
  }
}
