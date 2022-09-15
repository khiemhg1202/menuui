// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 19,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            userFollowing(),
            userFollowing(),
            userFollowing(),
            userFollowing(),
            userFollowing(),
            userFollowing(),
          ],
        ),
      ),
    );
  }

  Container userFollowing() {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(
        bottom: 8,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [UserFollowing(), ButtonFollow()],
      ),
    );
  }
}

class ButtonFollow extends StatelessWidget {
  const ButtonFollow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: const Color(0xFF130160),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      child: const Text(
        "Đang Follow",
        style: TextStyle(color: Color(0xFFFFFFFF), fontWeight: FontWeight.w400),
      ),
    );
  }
}

class UserFollowing extends StatelessWidget {
  const UserFollowing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("assets/images/i_avt.png"),
        ),
        title: const Text(
          "Orlando Diggs",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        subtitle: const Text("California, USA",
            style: TextStyle(fontWeight: FontWeight.w400)),
      ),
    );
  }
}
