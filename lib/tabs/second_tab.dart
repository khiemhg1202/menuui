// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FollowerTab extends StatelessWidget {
  const FollowerTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
          top: 20,
        ),
        child: ListView.builder(
            itemCount: 12,
            itemBuilder: (context, index) {
              return userFollower();
            }));
  }

  Container userFollower() {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 8, left: 16, right: 16),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/i_avt.png"),
              ),
              title: const Text("Orlando Digs",
                  style: TextStyle(fontWeight: FontWeight.w700)),
              subtitle: const Text("California, USA",
                  style: TextStyle(fontWeight: FontWeight.w400)),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: const Color(0xFF130160),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            child: const Text(
              "Follow lại",
              style: TextStyle(
                  color: Color(0xFFFFFFFF), fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
