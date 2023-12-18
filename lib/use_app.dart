import 'package:english_project/font_size.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';
import 'package:velocity_x/velocity_x.dart';

class HowToUseApp {
  ///////////////select news page///////////////////
  static final GlobalKey newsPage = GlobalKey();

  static final GlobalKey newsButtonKey = GlobalKey();
  static final GlobalKey clickSearchWord = GlobalKey();
  static final GlobalKey clickSearchSentences = GlobalKey();

  static final GlobalKey word = GlobalKey();

  static final GlobalKey selectText1 = GlobalKey();

  static final GlobalKey back1 = GlobalKey();

  static final GlobalKey sentences = GlobalKey();

  static final GlobalKey selectText2 = GlobalKey();
  static final GlobalKey search = GlobalKey();

  static final GlobalKey back2 = GlobalKey();

  /////////////////select search word///////////////////////////
  static final GlobalKey searchWord = GlobalKey();

  static final GlobalKey search2 = GlobalKey();

  static final GlobalKey save = GlobalKey();

  static final GlobalKey ok = GlobalKey();

  ////////////////////select learn vocabulary ////////////////////////
  static final GlobalKey selectCourse = GlobalKey();

  static final GlobalKey showChoice = GlobalKey();

  static final GlobalKey good = GlobalKey();

  void createTutorial(BuildContext context) {
    final targets = [
      TargetFocus(
          keyTarget: newsPage,
          alignSkip: Alignment.bottomCenter,
          contents: [
            TargetContent(
              align: ContentAlign.top,
              builder: (context, controller) =>
                  "Nhấn vào để xem nội dung hay ho và học hỏi thêm kiến thức"
                      .text
                      .green500
                      .size(big)
                      .make(),
            ),
          ]),
      TargetFocus(
          keyTarget: newsButtonKey,
          alignSkip: Alignment.bottomCenter,
          contents: [
            TargetContent(
              align: ContentAlign.bottom,
              builder: (context, controller) =>
                  "Nhấn vào để xem nội dung hay ho và học hỏi thêm kiến thức"
                      .text
                      .green500
                      .size(big)
                      .make(),
            ),
          ]),
      TargetFocus(
          keyTarget: clickSearchWord,
          alignSkip: Alignment.bottomCenter,
          contents: [
            TargetContent(
              align: ContentAlign.bottom,
              builder: (context, controller) =>
                  "Nhấn vào để tra từ vựng".text.green500.size(big).make(),
            ),
          ]),
    ];
    final tutorial = TutorialCoachMark(targets: targets);
    tutorial.show(context: context);
  }

  void createTutorial1(BuildContext context) {
    final targets = [
      TargetFocus(
          keyTarget: clickSearchWord,
          alignSkip: Alignment.bottomCenter,
          contents: [
            TargetContent(
              align: ContentAlign.bottom,
              builder: (context, controller) =>
                  "Nhấn vào để tra từ vựng".text.green500.size(big).make(),
            ),
          ]),
      TargetFocus(
          keyTarget: clickSearchSentences,
          alignSkip: Alignment.bottomCenter,
          contents: [
            TargetContent(
              align: ContentAlign.bottom,
              builder: (context, controller) =>
                  "Nhấn vào để tra đoạn văn".text.green500.size(big).make(),
            ),
          ]),
    ];
    final tutorial = TutorialCoachMark(targets: targets);
    tutorial.show(context: context);
  }

  void createTutorial2(BuildContext context) {
    final targets = [
      TargetFocus(
        alignSkip: Alignment.bottomCenter,
        keyTarget: word,
        targetPosition: TargetPosition(
          context.screenSize,

           Offset(context.screenHeight/2, context.screenWidth/2), // Vị trí tuyệt đối trên màn hình
        ),
        contents: [
          TargetContent(
            builder: (context, controller) {
              return Lottie.asset('assets/animation/premium.json');
            },
            align: ContentAlign.bottom,
          )
        ],
      )
    ];
    final tutorial = TutorialCoachMark(
      targets: targets,
    );
    tutorial.show(context: context);
  }
}
