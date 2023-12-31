import 'package:flutter/material.dart';

import '../../Widgets.dart/PageViewWeidget.dart';
import '../../Widgets.dart/StoryWidget/HompageStoryCardWidget.dart';

class MatchFrontPage extends StatelessWidget {
  const MatchFrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: pageViewWidget(),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 500,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 20,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return StoryCard(
                  title: 'ponka',
                  hline: 'this is the hline',
                  intro: 'A quick brown fox jumps over a lazy dog',
                );
              }),
        )
      ],
    );
  }
}
