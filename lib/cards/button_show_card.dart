import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ButtonShowCard extends StatelessWidget {
  const ButtonShowCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {},
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                height: 28,
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Xem trước",
                      style: GoogleFonts.dmSans(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Image.asset(
                      "assets/show_icon.png",
                      width: 18,
                      height: 20,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}