import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:english_project/app/features/auth/auth_guard.dart';
import 'package:english_project/app/features/auth/core/routes/auth_routes.dart';

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
      guards: [AuthGuard()],
      children: [
        AutoRoute(path: 'news', page: NewsRoute.page,),
        AutoRoute(path: 'learn-vocabulary', page: LearnVocabularyRoute.page),
        AutoRoute(path: 'favorite-news', page: FavoriteNewsRoute.page),
        AutoRoute(path: 'user-account', page: UserAccountRoute.page),
      ],
    ),
    ...AuthRoutes,
  ];
}