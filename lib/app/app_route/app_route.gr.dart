// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:english_project/app/features/favorite_news/favorite_news_page.dart'
    as _i1;
import 'package:english_project/app/features/learn_vocabulary/learn_vocabulary_page.dart'
    as _i2;
import 'package:english_project/app/features/news/news_page.dart' as _i4;
import 'package:english_project/app/features/user_account/user_account_page.dart'
    as _i5;
import 'package:english_project/main_page.dart' as _i3;

abstract class $AppAutoRoute extends _i6.RootStackRouter {
  $AppAutoRoute({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    FavoriteNewsRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.FavoriteNewsPage(),
      );
    },
    LearnVocabularyRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LearnVocabularyPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.MainPage(),
      );
    },
    NewsRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.NewsPage(),
      );
    },
    UserAccountRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.UserAccountPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.FavoriteNewsPage]
class FavoriteNewsRoute extends _i6.PageRouteInfo<void> {
  const FavoriteNewsRoute({List<_i6.PageRouteInfo>? children})
      : super(
          FavoriteNewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteNewsRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LearnVocabularyPage]
class LearnVocabularyRoute extends _i6.PageRouteInfo<void> {
  const LearnVocabularyRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LearnVocabularyRoute.name,
          initialChildren: children,
        );

  static const String name = 'LearnVocabularyRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MainPage]
class MainRoute extends _i6.PageRouteInfo<void> {
  const MainRoute({List<_i6.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.NewsPage]
class NewsRoute extends _i6.PageRouteInfo<void> {
  const NewsRoute({List<_i6.PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.UserAccountPage]
class UserAccountRoute extends _i6.PageRouteInfo<void> {
  const UserAccountRoute({List<_i6.PageRouteInfo>? children})
      : super(
          UserAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserAccountRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
