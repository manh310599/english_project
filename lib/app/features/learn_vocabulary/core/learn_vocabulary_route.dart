import 'package:auto_route/auto_route.dart';
import 'package:english_project/app/app_route/app_route.gr.dart';
import 'package:english_project/app/features/learn_vocabulary/presentation/lesson_deck/lesson_page.dart';

final learnVocabularyRoute = [

  AutoRoute(
    page: CourseRoute.page,
    path: '/course',
  ),
  AutoRoute(page: LessonRoute.page)
];
