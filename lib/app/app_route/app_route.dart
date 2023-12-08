import 'package:auto_route/auto_route.dart';
import 'package:english_project/app/features/auth/core/routes/auth_routes.dart';
import 'package:english_project/app/features/news/core/routes/news_routes.dart';
import 'package:english_project/app/features/user_account/core/user_account_route.dart';

import '../features/learn_vocabulary/core/learn_vocabulary_route.dart';
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
        AutoRoute(
          path: 'news',
          page: NewsRoute.page,
        ),
        AutoRoute(page: SearchWordRoute.page, path: 'search-word'),
        AutoRoute(path: 'learn-vocabulary', page: LearnVocabularyRoute.page),
        AutoRoute(path: 'favorite-news', page: FavoriteNewsRoute.page),
        AutoRoute(path: 'user-account', page: UserAccountRoute.page),
      ],
    ),
    ...AuthRoutes,
    ...newsRoutes,
    ...learnVocabularyRoute,
    ...userAccountRoute,
    //////////Waiting route//////////////////////
    ...[
      AutoRoute(page: WaitingScreenRoute.page, path: '/waiting'),
      AutoRoute(page: WaitingLoginRoute.page, path: '/waiting_login'),
    ]
  ];
}
