import 'package:flutter/material.dart';

import 'button_show_card.dart';
import 'information_card.dart';
import 'setting_card.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return const CardInFor();
          },
        ));
  }
}

class CardInFor extends StatelessWidget {
  const CardInFor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 12,
          ),
          height: MediaQuery.of(context).size.height * 0.25,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            image: DecorationImage(
              image: AssetImage(
                "assets/card_background.png",
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Expanded(
                      child: InformationCard(),
                    ),
                    SettingCard()
                  ],
                ),
                const ButtonShowCard()
              ],
            ),
          ),
        )
      ],
    );
  }
}
