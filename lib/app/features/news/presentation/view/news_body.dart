import 'package:english_project/gaps.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class NewsBody extends StatelessWidget {
  const NewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Container(
          color: Colors.white,
          child: Row(
            children: [
              Image.asset('assets/images/logo.png'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  'title'.text.black.make(),
                  Gaps.vGap12,
                  'Manila lodges diplomatic protest over near collisions in the South China Sea, its 55th this year.'
                      .text
                      .black
                      .make(),
                ],
              ).expand()
            ],
          ),
        );
      },
      itemCount: 5,
      shrinkWrap: true,
      separatorBuilder: (BuildContext context, int index) {
        return Gaps.vGap12;
      },
    );
  }
}
