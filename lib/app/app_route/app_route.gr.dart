// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:english_project/app/common/model/storage_database.dart' as _i15;
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
import 'package:english_project/app/features/learn_vocabulary/presentation/course/course_page.dart'
    as _i6;
import 'package:english_project/app/features/learn_vocabulary/presentation/lesson_deck/lesson_page.dart'
    as _i12;
import 'package:english_project/app/features/news/news_page.dart' as _i7;
import 'package:english_project/app/features/news/presentation/news_read/news_read_page.dart'
    as _i8;
import 'package:english_project/app/features/search_word/presentation/search_word.dart'
    as _i9;
import 'package:english_project/app/features/user_account/user_account_page.dart'
    as _i10;
import 'package:english_project/main_page.dart' as _i11;
import 'package:flutter/material.dart' as _i14;

abstract class $AppAutoRoute extends _i13.RootStackRouter {
  $AppAutoRoute({super.navigatorKey});

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    ForgotPasswordRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ForgotPasswordPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.RegisterPage(),
      );
    },
    FavoriteNewsRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.FavoriteNewsPage(),
      );
    },
    LearnVocabularyRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LearnVocabularyPage(),
      );
    },
    CourseRoute.name: (routeData) {
      final args = routeData.argsAs<CourseRouteArgs>(
          orElse: () => const CourseRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.CoursePage(
          key: args.key,
          name: args.name,
          words: args.words,
        ),
      );
    },
    NewsRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.NewsPage(),
      );
    },
    NewsReadRoute.name: (routeData) {
      final args = routeData.argsAs<NewsReadRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.NewsReadPage(
          key: args.key,
          url: args.url,
          image: args.image,
          auth: args.auth,
          title: args.title,
        ),
      );
    },
    SearchWordRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SearchWordPage(),
      );
    },
    UserAccountRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.UserAccountPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.MainPage(),
      );
    },
    LessonRoute.name: (routeData) {
      final args = routeData.argsAs<LessonRouteArgs>(
          orElse: () => const LessonRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.LessonPage(
          key: args.key,
          words: args.words,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.ForgotPasswordPage]
class ForgotPasswordRoute extends _i13.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i13.PageRouteInfo<void> {
  const LoginRoute({List<_i13.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i3.RegisterPage]
class RegisterRoute extends _i13.PageRouteInfo<void> {
  const RegisterRoute({List<_i13.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i4.FavoriteNewsPage]
class FavoriteNewsRoute extends _i13.PageRouteInfo<void> {
  const FavoriteNewsRoute({List<_i13.PageRouteInfo>? children})
      : super(
          FavoriteNewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteNewsRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LearnVocabularyPage]
class LearnVocabularyRoute extends _i13.PageRouteInfo<void> {
  const LearnVocabularyRoute({List<_i13.PageRouteInfo>? children})
      : super(
          LearnVocabularyRoute.name,
          initialChildren: children,
        );

  static const String name = 'LearnVocabularyRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i6.CoursePage]
class CourseRoute extends _i13.PageRouteInfo<CourseRouteArgs> {
  CourseRoute({
    _i14.Key? key,
    String? name,
    List<_i15.Words?>? words,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          CourseRoute.name,
          args: CourseRouteArgs(
            key: key,
            name: name,
            words: words,
          ),
          initialChildren: children,
        );

  static const String name = 'CourseRoute';

  static const _i13.PageInfo<CourseRouteArgs> page =
      _i13.PageInfo<CourseRouteArgs>(name);
}

class CourseRouteArgs {
  const CourseRouteArgs({
    this.key,
    this.name,
    this.words,
  });

  final _i14.Key? key;

  final String? name;

  final List<_i15.Words?>? words;

  @override
  String toString() {
    return 'CourseRouteArgs{key: $key, name: $name, words: $words}';
  }
}

/// generated route for
/// [_i7.NewsPage]
class NewsRoute extends _i13.PageRouteInfo<void> {
  const NewsRoute({List<_i13.PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i8.NewsReadPage]
class NewsReadRoute extends _i13.PageRouteInfo<NewsReadRouteArgs> {
  NewsReadRoute({
    _i14.Key? key,
    required String url,
    required String image,
    required String auth,
    required String title,
    List<_i13.PageRouteInfo>? children,
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

  static const _i13.PageInfo<NewsReadRouteArgs> page =
      _i13.PageInfo<NewsReadRouteArgs>(name);
}

class NewsReadRouteArgs {
  const NewsReadRouteArgs({
    this.key,
    required this.url,
    required this.image,
    required this.auth,
    required this.title,
  });

  final _i14.Key? key;

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
/// [_i9.SearchWordPage]
class SearchWordRoute extends _i13.PageRouteInfo<void> {
  const SearchWordRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SearchWordRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchWordRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i10.UserAccountPage]
class UserAccountRoute extends _i13.PageRouteInfo<void> {
  const UserAccountRoute({List<_i13.PageRouteInfo>? children})
      : super(
          UserAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserAccountRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i11.MainPage]
class MainRoute extends _i13.PageRouteInfo<void> {
  const MainRoute({List<_i13.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i12.LessonPage]
class LessonRoute extends _i13.PageRouteInfo<LessonRouteArgs> {
  LessonRoute({
    _i14.Key? key,
    List<_i15.Words?>? words,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          LessonRoute.name,
          args: LessonRouteArgs(
            key: key,
            words: words,
          ),
          initialChildren: children,
        );

  static const String name = 'LessonRoute';

  static const _i13.PageInfo<LessonRouteArgs> page =
      _i13.PageInfo<LessonRouteArgs>(name);
}

class LessonRouteArgs {
  const LessonRouteArgs({
    this.key,
    this.words,
  });

  final _i14.Key? key;

  final List<_i15.Words?>? words;

  @override
  String toString() {
    return 'LessonRouteArgs{key: $key, words: $words}';
  }
}
