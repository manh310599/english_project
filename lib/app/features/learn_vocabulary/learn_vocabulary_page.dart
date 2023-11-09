import 'package:auto_route/auto_route.dart';
import 'package:english_project/app/common/widget/flip_card_widget/back_card_view.dart';
import 'package:english_project/app/common/widget/flip_card_widget/card_widget.dart';
import 'package:english_project/app/common/widget/flip_card_widget/flip_card_widget.dart';
import 'package:english_project/app/common/widget/flip_card_widget/front_card_view.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LearnVocabularyPage extends StatelessWidget {
  const LearnVocabularyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlashCard(
            child: FlipCardWidget(
                front: const FrontCardView(
                    vocabulary: 'vocabulary',
                    image:
                        'https://buffer.com/library/content/images/2023/10/free-images.jpg'),
                back: const BackCardView(
                    vocabulary: 'vocabulary',
                    image:
                        'https://buffer.com/library/content/images/2023/10/free-images.jpg',
                    meaning: 'từ vựng'),
                controller: FlipCardController())),
      ),
    );
  }
}
