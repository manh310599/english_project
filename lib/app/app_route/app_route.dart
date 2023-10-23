import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

import 'app_route.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page|Dialog,Route',
)
class AppAutoRoute extends $AppAutoRoute {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: '/main',
      page: MainRoute.page,
      initial: true,
      children: [
        AutoRoute(path: 'news', page: NewsRoute.page,),
        AutoRoute(path: 'learn-vocabulary', page: LearnVocabularyRoute.page),
        AutoRoute(path: 'favorite-news', page: FavoriteNewsRoute.page),
        AutoRoute(path: 'user-account', page: UserAccountRoute.page),
      ],
    ),

  ];
}