// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FollowingTab extends StatelessWidget {
  const FollowingTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
          top: 12,
        ),
        child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              return userFollowing();
            }));
  }

  Container userFollowing() {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 8, left: 16, right: 16),
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
          backgroundImage: AssetImage("assets/i_avt.png"),
        ),
        title: const Text(
          "Orlando Digs",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        subtitle: const Text("California, USA",
            style: TextStyle(fontWeight: FontWeight.w400)),
      ),
    );
  }
}
