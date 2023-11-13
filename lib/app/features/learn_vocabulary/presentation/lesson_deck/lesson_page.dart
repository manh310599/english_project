import 'package:auto_route/annotations.dart';
import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/common/widget/flip_card_widget/back_card_view.dart';
import 'package:english_project/app/common/widget/flip_card_widget/front_card_view.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../common/model/storage_database.dart';

@RoutePage()
class LessonPage extends StatelessWidget {
   LessonPage({super.key, this.words});

  final List<Words?>? words;
  FlipCardController controller = FlipCardController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: InkWell(
            onTap: () {
              controller.flipCard();
            },
            child: FlipCardWidget(
                front: FrontCardView(
                    vocabulary: words?[0]?.word ?? '',
                    image: words?[0]?.image ?? ''),
                back: BackCardView(
                    vocabulary: words?[0]?.word ?? '',
                    image: words?[0]?.image ?? '',
                    meaning: words?[0]?.mean ?? ''),
                controller: controller),
          ),
        ));
  }
}
