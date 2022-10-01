import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingCard extends StatelessWidget {
  const SettingCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {},
              child: Image.asset(
                "assets/union_icon.png",
                color: Colors.white,
                width: 24,
                height: 24,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 22),
            InkWell(
              onTap: () => showModalBottomSheet(
                  context: context, builder: (context) => buildSheet()),
              child: Image.asset(
                "assets/ic_setting_outline.png",
                color: Colors.white,
                width: 24,
                height: 24,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQueryData.fromWindow(window).viewPadding.bottom == 0
              ? 12
              : 22,
        ),
        Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.asset(
              "assets/ic_card.png",
              height: 24,
              width: 24,
            ),
          ),
        ),
        SizedBox(
          height: MediaQueryData.fromWindow(window).viewPadding.bottom == 0
              ? 4
              : 16,
        ),
        Text("Thẻ của Khiêm",
            style: GoogleFonts.dmSans(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400))
      ],
    );
  }
}

Widget buildSheet() => Padding(
      padding: const EdgeInsets.only(
        bottom: 32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 28, bottom: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/ic_indicator_line.png"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 36),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/ic_plus.png",
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Follow",
                      style: GoogleFonts.dmSans(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                const SizedBox(
                  height: 26,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/ic_send_messenger.png",
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Send message",
                      style: GoogleFonts.dmSans(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                const SizedBox(
                  height: 26,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/union_icon.png",
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Shared",
                      style: GoogleFonts.dmSans(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                const SizedBox(
                  height: 26,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/ic_delete.png",
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Delete",
                      style: GoogleFonts.dmSans(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
