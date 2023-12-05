import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/common/widget/button/cupertino_button.dart';
import 'package:english_project/app/common/widget/button/cupertion_button_custom.dart';
import 'package:english_project/app/common/widget/button_choice/choice_button.dart';
import 'package:english_project/app/common/widget/flip_card_widget/back_card_view.dart';
import 'package:english_project/app/common/widget/flip_card_widget/front_card_view.dart';
import 'package:english_project/app/features/learn_vocabulary/presentation/lesson_deck/viewmodel/lesson_cubit.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class LessonPage extends StatelessWidget {
  const LessonPage({super.key, this.id, this.premium});

  final bool? premium;
  final int? id;


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LessonCubit()..getListWordsByDay(id!, premium),
      child: BlocBuilder<LessonCubit, LessonState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: state.bannerAd != null
                  ? SizedBox(
                      height: 60,
                      child: AdWidget(ad: state.bannerAd!),
                    )
                  : const SizedBox(),
            ),
            body: state.words?.isNotEmpty == true
                ? Align(
                    alignment: Alignment.topCenter,
                    child: FlipCardWidget(
                        front: FrontCardView(
                            imageMemory: const Base64Decoder()
                                .convert(state.words?[0]?.assets_image ?? ''),
                            vocabulary: state.words?[0]?.word,
                            image: state.words?[0]?.image ?? ''),
                        back: BackCardView(
                            imageMemory: const Base64Decoder()
                                .convert(state.words?[0]?.assets_image ?? ''),
                            vocabulary: state.words?[0]?.word ?? '',
                            image: state.words?[0]?.image ?? '',
                            meaning: state.words?[0]?.mean ?? ''),
                        controller: context.read<LessonCubit>().controller),
                  )
                : Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        'Chúc mừng bạn đã hoàn thành khóa học ngày hôm nay'
                            .text
                            .make(),
                        CupertinoButtonCustom(
                          child: 'Thoát'.text.make(),
                          click: () {
                            context.popRoute();
                          },
                        ),
                      ],
                    ),
                  ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: state.words?.isEmpty == true
                ? const SizedBox()
                : state.checkBackCard == true
                    ? ChoiceButton(
                        againPressed: () {
                          context.read<LessonCubit>().controllerFlipCard();
                          context.read<LessonCubit>().again();
                        },
                        hardPressed: () {
                          context.read<LessonCubit>().controllerFlipCard();
                          context.read<LessonCubit>().hard();
                        },
                        goodPressed: () {
                          context.read<LessonCubit>().controllerFlipCard();
                          context.read<LessonCubit>().good();
                        },
                        easyPressed: () {
                          context.read<LessonCubit>().controllerFlipCard();
                          context.read<LessonCubit>().easy();
                        },
                        againTime: state.againTime.toString() ?? '',
                        easyTime: state.easyTime.toString() ?? '',
                        goodTime: state.goodTime.toString() ?? '',
                        hardTime: state.hardTime.toString() ?? '',
                      )
                    : CupertinoButtonEdit(
                        text: 'Hiện lựa chọn',
                        textColor: Colors.black,
                        onPressed: () {
                          context.read<LessonCubit>().controllerFlipCard();
                          context.read<LessonCubit>().giveChoice();
                        },
                      ),
          );
        },
      ),
    );
  }
}
