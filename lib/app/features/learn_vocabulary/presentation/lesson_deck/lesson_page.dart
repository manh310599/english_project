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
import 'package:velocity_x/velocity_x.dart';

import '../../../../common/model/storage_database.dart';

@RoutePage()
class LessonPage extends StatelessWidget {
  LessonPage({super.key, this.words});

  final List<Words?>? words;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LessonCubit()..startWords(words),
      child: BlocConsumer<LessonCubit, LessonState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            body: state.words?.isNotEmpty == true
                ? Center(
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
                FloatingActionButtonLocation.miniCenterFloat,
            floatingActionButton:

            state.words?.isEmpty==true ? const SizedBox() : state.checkBackCard == true
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
