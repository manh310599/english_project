// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:english_project/app/features/auth/presentation/login/login_page.dart'
    as _i1;
import 'package:english_project/app/features/auth/presentation/register/register_page.dart'
    as _i2;
import 'package:english_project/app/features/favorite_news/favorite_news_page.dart'
    as _i3;
import 'package:english_project/app/features/learn_vocabulary/learn_vocabulary_page.dart'
    as _i4;
import 'package:english_project/app/features/news/news_page.dart' as _i5;
import 'package:english_project/app/features/user_account/user_account_page.dart'
    as _i6;
import 'package:english_project/main_page.dart' as _i7;

abstract class $AppAutoRoute extends _i8.RootStackRouter {
  $AppAutoRoute({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.RegisterPage(),
      );
    },
    FavoriteNewsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.FavoriteNewsPage(),
      );
    },
    LearnVocabularyRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LearnVocabularyPage(),
      );
    },
    NewsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.NewsPage(),
      );
    },
    UserAccountRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.UserAccountPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.MainPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.RegisterPage]
class RegisterRoute extends _i8.PageRouteInfo<void> {
  const RegisterRoute({List<_i8.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.FavoriteNewsPage]
class FavoriteNewsRoute extends _i8.PageRouteInfo<void> {
  const FavoriteNewsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          FavoriteNewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteNewsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LearnVocabularyPage]
class LearnVocabularyRoute extends _i8.PageRouteInfo<void> {
  const LearnVocabularyRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LearnVocabularyRoute.name,
          initialChildren: children,
        );

  static const String name = 'LearnVocabularyRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.NewsPage]
class NewsRoute extends _i8.PageRouteInfo<void> {
  const NewsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.UserAccountPage]
class UserAccountRoute extends _i8.PageRouteInfo<void> {
  const UserAccountRoute({List<_i8.PageRouteInfo>? children})
      : super(
          UserAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserAccountRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MainPage]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
