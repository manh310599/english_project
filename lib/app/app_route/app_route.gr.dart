// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i20;
import 'package:english_project/app/common/widget/waiting/waiting_login.dart'
    as _i19;
import 'package:english_project/app/common/widget/waiting/wating_screen.dart'
    as _i18;
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
import 'package:english_project/app/features/learn_vocabulary/presentation/export/export.dart'
    as _i7;
import 'package:english_project/app/features/learn_vocabulary/presentation/import/import_data.dart'
    as _i8;
import 'package:english_project/app/features/learn_vocabulary/presentation/lesson_deck/lesson_page.dart'
    as _i9;
import 'package:english_project/app/features/news/news_page.dart' as _i10;
import 'package:english_project/app/features/news/presentation/news_read/news_read_page.dart'
    as _i11;
import 'package:english_project/app/features/news/presentation/PDF/pdf_page.dart'
    as _i12;
import 'package:english_project/app/features/search_word/presentation/search_word.dart'
    as _i13;
import 'package:english_project/app/features/user_account/presentation/custom_profile/custom_infomation_page.dart'
    as _i14;
import 'package:english_project/app/features/user_account/presentation/premium/premium_page.dart'
    as _i15;
import 'package:english_project/app/features/user_account/user_account_page.dart'
    as _i16;
import 'package:english_project/main_page.dart' as _i17;
import 'package:flutter/material.dart' as _i21;

abstract class $AppAutoRoute extends _i20.RootStackRouter {
  $AppAutoRoute({super.navigatorKey});

  @override
  final Map<String, _i20.PageFactory> pagesMap = {
    ForgotPasswordRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ForgotPasswordPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.RegisterPage(),
      );
    },
    FavoriteNewsRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.FavoriteNewsPage(),
      );
    },
    LearnVocabularyRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LearnVocabularyPage(),
      );
    },
    CourseRoute.name: (routeData) {
      final args = routeData.argsAs<CourseRouteArgs>(
          orElse: () => const CourseRouteArgs());
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.CoursePage(
          key: args.key,
          name: args.name,
          id: args.id,
        ),
      );
    },
    Export.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.Export(),
      );
    },
    Import.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.Import(),
      );
    },
    LessonRoute.name: (routeData) {
      final args = routeData.argsAs<LessonRouteArgs>(
          orElse: () => const LessonRouteArgs());
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.LessonPage(
          key: args.key,
          id: args.id,
          premium: args.premium,
        ),
      );
    },
    NewsRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.NewsPage(),
      );
    },
    NewsReadRoute.name: (routeData) {
      final args = routeData.argsAs<NewsReadRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.NewsReadPage(
          key: args.key,
          url: args.url,
          choice: args.choice,
        ),
      );
    },
    PDFRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.PDFPage(),
      );
    },
    SearchWordRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SearchWordPage(),
      );
    },
    CustomInformationRoute.name: (routeData) {
      final args = routeData.argsAs<CustomInformationRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.CustomInformationPage(
          key: args.key,
          time: args.time,
        ),
      );
    },
    PremiumRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.PremiumPage(),
      );
    },
    UserAccountRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.UserAccountPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.MainPage(),
      );
    },
    WaitingScreenRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.WaitingScreenPage(),
      );
    },
    WaitingLoginRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.WaitingLoginPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.ForgotPasswordPage]
class ForgotPasswordRoute extends _i20.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i20.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i20.PageRouteInfo<void> {
  const LoginRoute({List<_i20.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i3.RegisterPage]
class RegisterRoute extends _i20.PageRouteInfo<void> {
  const RegisterRoute({List<_i20.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i4.FavoriteNewsPage]
class FavoriteNewsRoute extends _i20.PageRouteInfo<void> {
  const FavoriteNewsRoute({List<_i20.PageRouteInfo>? children})
      : super(
          FavoriteNewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteNewsRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LearnVocabularyPage]
class LearnVocabularyRoute extends _i20.PageRouteInfo<void> {
  const LearnVocabularyRoute({List<_i20.PageRouteInfo>? children})
      : super(
          LearnVocabularyRoute.name,
          initialChildren: children,
        );

  static const String name = 'LearnVocabularyRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i6.CoursePage]
class CourseRoute extends _i20.PageRouteInfo<CourseRouteArgs> {
  CourseRoute({
    _i21.Key? key,
    String? name,
    int? id,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          CourseRoute.name,
          args: CourseRouteArgs(
            key: key,
            name: name,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'CourseRoute';

  static const _i20.PageInfo<CourseRouteArgs> page =
      _i20.PageInfo<CourseRouteArgs>(name);
}

class CourseRouteArgs {
  const CourseRouteArgs({
    this.key,
    this.name,
    this.id,
  });

  final _i21.Key? key;

  final String? name;

  final int? id;

  @override
  String toString() {
    return 'CourseRouteArgs{key: $key, name: $name, id: $id}';
  }
}

/// generated route for
/// [_i7.Export]
class Export extends _i20.PageRouteInfo<void> {
  const Export({List<_i20.PageRouteInfo>? children})
      : super(
          Export.name,
          initialChildren: children,
        );

  static const String name = 'Export';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i8.Import]
class Import extends _i20.PageRouteInfo<void> {
  const Import({List<_i20.PageRouteInfo>? children})
      : super(
          Import.name,
          initialChildren: children,
        );

  static const String name = 'Import';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i9.LessonPage]
class LessonRoute extends _i20.PageRouteInfo<LessonRouteArgs> {
  LessonRoute({
    _i21.Key? key,
    int? id,
    bool? premium,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          LessonRoute.name,
          args: LessonRouteArgs(
            key: key,
            id: id,
            premium: premium,
          ),
          initialChildren: children,
        );

  static const String name = 'LessonRoute';

  static const _i20.PageInfo<LessonRouteArgs> page =
      _i20.PageInfo<LessonRouteArgs>(name);
}

class LessonRouteArgs {
  const LessonRouteArgs({
    this.key,
    this.id,
    this.premium,
  });

  final _i21.Key? key;

  final int? id;

  final bool? premium;

  @override
  String toString() {
    return 'LessonRouteArgs{key: $key, id: $id, premium: $premium}';
  }
}

/// generated route for
/// [_i10.NewsPage]
class NewsRoute extends _i20.PageRouteInfo<void> {
  const NewsRoute({List<_i20.PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i11.NewsReadPage]
class NewsReadRoute extends _i20.PageRouteInfo<NewsReadRouteArgs> {
  NewsReadRoute({
    _i21.Key? key,
    required String url,
    required int choice,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          NewsReadRoute.name,
          args: NewsReadRouteArgs(
            key: key,
            url: url,
            choice: choice,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsReadRoute';

  static const _i20.PageInfo<NewsReadRouteArgs> page =
      _i20.PageInfo<NewsReadRouteArgs>(name);
}

class NewsReadRouteArgs {
  const NewsReadRouteArgs({
    this.key,
    required this.url,
    required this.choice,
  });

  final _i21.Key? key;

  final String url;

  final int choice;

  @override
  String toString() {
    return 'NewsReadRouteArgs{key: $key, url: $url, choice: $choice}';
  }
}

/// generated route for
/// [_i12.PDFPage]
class PDFRoute extends _i20.PageRouteInfo<void> {
  const PDFRoute({List<_i20.PageRouteInfo>? children})
      : super(
          PDFRoute.name,
          initialChildren: children,
        );

  static const String name = 'PDFRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SearchWordPage]
class SearchWordRoute extends _i20.PageRouteInfo<void> {
  const SearchWordRoute({List<_i20.PageRouteInfo>? children})
      : super(
          SearchWordRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchWordRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i14.CustomInformationPage]
class CustomInformationRoute
    extends _i20.PageRouteInfo<CustomInformationRouteArgs> {
  CustomInformationRoute({
    _i21.Key? key,
    required int time,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          CustomInformationRoute.name,
          args: CustomInformationRouteArgs(
            key: key,
            time: time,
          ),
          initialChildren: children,
        );

  static const String name = 'CustomInformationRoute';

  static const _i20.PageInfo<CustomInformationRouteArgs> page =
      _i20.PageInfo<CustomInformationRouteArgs>(name);
}

class CustomInformationRouteArgs {
  const CustomInformationRouteArgs({
    this.key,
    required this.time,
  });

  final _i21.Key? key;

  final int time;

  @override
  String toString() {
    return 'CustomInformationRouteArgs{key: $key, time: $time}';
  }
}

/// generated route for
/// [_i15.PremiumPage]
class PremiumRoute extends _i20.PageRouteInfo<void> {
  const PremiumRoute({List<_i20.PageRouteInfo>? children})
      : super(
          PremiumRoute.name,
          initialChildren: children,
        );

  static const String name = 'PremiumRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i16.UserAccountPage]
class UserAccountRoute extends _i20.PageRouteInfo<void> {
  const UserAccountRoute({List<_i20.PageRouteInfo>? children})
      : super(
          UserAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserAccountRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i17.MainPage]
class MainRoute extends _i20.PageRouteInfo<void> {
  const MainRoute({List<_i20.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i18.WaitingScreenPage]
class WaitingScreenRoute extends _i20.PageRouteInfo<void> {
  const WaitingScreenRoute({List<_i20.PageRouteInfo>? children})
      : super(
          WaitingScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'WaitingScreenRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i19.WaitingLoginPage]
class WaitingLoginRoute extends _i20.PageRouteInfo<void> {
  const WaitingLoginRoute({List<_i20.PageRouteInfo>? children})
      : super(
          WaitingLoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'WaitingLoginRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}
