import 'package:auto_route/auto_route.dart';
import 'package:english_project/app/app_route/app_route.gr.dart';

final learnVocabularyRoute = [
  AutoRoute(
    page: CourseRoute.page,
    path: '/course',
  ),
  AutoRoute(page: LessonRoute.page, path: '/lesson'),
  AutoRoute(page: Export.page, path: '/export_data'),
  AutoRoute(page: Import.page, path: '/import_data'),
];
