// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:english_project/app/features/auth/presentation/forgot_pass_word/forgot_pass_page.dart'
    as _i1;
import 'package:english_project/app/features/auth/presentation/login/login_page.dart'
    as _i2;
import 'package:english_project/app/features/auth/presentation/register/register_page.dart'
    as _i3;
import 'package:english_project/app/features/favorite_news/favorite_news_page.dart'
    as _i4;
import 'package:english_project/app/features/learn_vocabulary/learn_vocabulary_page.dart'
    as _i5;
import 'package:english_project/app/features/news/news_page.dart' as _i6;
import 'package:english_project/app/features/news/presentation/news_read/news_read_page.dart'
    as _i7;
import 'package:english_project/app/features/search_word/presentation/search_word.dart'
    as _i8;
import 'package:english_project/app/features/user_account/user_account_page.dart'
    as _i9;
import 'package:english_project/main_page.dart' as _i10;
import 'package:flutter/material.dart' as _i12;

abstract class $AppAutoRoute extends _i11.RootStackRouter {
  $AppAutoRoute({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    ForgotPasswordRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ForgotPasswordPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.RegisterPage(),
      );
    },
    FavoriteNewsRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.FavoriteNewsPage(),
      );
    },
    LearnVocabularyRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LearnVocabularyPage(),
      );
    },
    NewsRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.NewsPage(),
      );
    },
    NewsReadRoute.name: (routeData) {
      final args = routeData.argsAs<NewsReadRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.NewsReadPage(
          key: args.key,
          url: args.url,
          image: args.image,
          auth: args.auth,
          title: args.title,
        ),
      );
    },
    SearchWordRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SearchWordPage(),
      );
    },
    UserAccountRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.UserAccountPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.MainPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.ForgotPasswordPage]
class ForgotPasswordRoute extends _i11.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i11.PageRouteInfo<void> {
  const LoginRoute({List<_i11.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.RegisterPage]
class RegisterRoute extends _i11.PageRouteInfo<void> {
  const RegisterRoute({List<_i11.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.FavoriteNewsPage]
class FavoriteNewsRoute extends _i11.PageRouteInfo<void> {
  const FavoriteNewsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          FavoriteNewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteNewsRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LearnVocabularyPage]
class LearnVocabularyRoute extends _i11.PageRouteInfo<void> {
  const LearnVocabularyRoute({List<_i11.PageRouteInfo>? children})
      : super(
          LearnVocabularyRoute.name,
          initialChildren: children,
        );

  static const String name = 'LearnVocabularyRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.NewsPage]
class NewsRoute extends _i11.PageRouteInfo<void> {
  const NewsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.NewsReadPage]
class NewsReadRoute extends _i11.PageRouteInfo<NewsReadRouteArgs> {
  NewsReadRoute({
    _i12.Key? key,
    required String url,
    required String image,
    required String auth,
    required String title,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          NewsReadRoute.name,
          args: NewsReadRouteArgs(
            key: key,
            url: url,
            image: image,
            auth: auth,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsReadRoute';

  static const _i11.PageInfo<NewsReadRouteArgs> page =
      _i11.PageInfo<NewsReadRouteArgs>(name);
}

class NewsReadRouteArgs {
  const NewsReadRouteArgs({
    this.key,
    required this.url,
    required this.image,
    required this.auth,
    required this.title,
  });

  final _i12.Key? key;

  final String url;

  final String image;

  final String auth;

  final String title;

  @override
  String toString() {
    return 'NewsReadRouteArgs{key: $key, url: $url, image: $image, auth: $auth, title: $title}';
  }
}

/// generated route for
/// [_i8.SearchWordPage]
class SearchWordRoute extends _i11.PageRouteInfo<void> {
  const SearchWordRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SearchWordRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchWordRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.UserAccountPage]
class UserAccountRoute extends _i11.PageRouteInfo<void> {
  const UserAccountRoute({List<_i11.PageRouteInfo>? children})
      : super(
          UserAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserAccountRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.MainPage]
class MainRoute extends _i11.PageRouteInfo<void> {
  const MainRoute({List<_i11.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
