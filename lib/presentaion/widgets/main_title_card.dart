import 'package:flutter/material.dart';
import 'package:netflix/core/constants/constants.dart';
import 'package:netflix/presentaion/widgets/main_card.dart';
import 'package:netflix/presentaion/widgets/main_title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: title,
        ),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => MainCardWidget(),
            ),
          ),
        ),
      ],
    );
  }
}
