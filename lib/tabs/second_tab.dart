// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({Key? key}) : super(key: key);

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
            userFollow(),
            userFollow(),
            userFollow(),
            userFollow(),
            userFollow(),
            userFollow(),
          ],
        ),
      ),
    );
  }

  Container userFollow() {
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
        children: [
          Expanded(
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/i_avt.png"),
              ),
              title: const Text("Orlando Diggs",
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
