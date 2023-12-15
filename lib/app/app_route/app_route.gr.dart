// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i20;
import 'package:english_project/app/common/widget/waiting/waiting_login.dart'
    as _i1;
import 'package:english_project/app/common/widget/waiting/wating_screen.dart'
    as _i2;
import 'package:english_project/app/features/auth/presentation/check_user/viewmodel/checkauth_bloc.dart'
    as _i22;
import 'package:english_project/app/features/auth/presentation/forgot_pass_word/forgot_pass_page.dart'
    as _i3;
import 'package:english_project/app/features/auth/presentation/login/login_page.dart'
    as _i4;
import 'package:english_project/app/features/auth/presentation/register/register_page.dart'
    as _i5;
import 'package:english_project/app/features/favorite_news/favorite_news_page.dart'
    as _i6;
import 'package:english_project/app/features/learn_vocabulary/learn_vocabulary_page.dart'
    as _i7;
import 'package:english_project/app/features/learn_vocabulary/presentation/course/course_page.dart'
    as _i8;
import 'package:english_project/app/features/learn_vocabulary/presentation/export/export.dart'
    as _i9;
import 'package:english_project/app/features/learn_vocabulary/presentation/import/import_data.dart'
    as _i10;
import 'package:english_project/app/features/learn_vocabulary/presentation/lesson_deck/lesson_page.dart'
    as _i11;
import 'package:english_project/app/features/news/news_page.dart' as _i12;
import 'package:english_project/app/features/news/presentation/news_read/news_read_page.dart'
    as _i13;
import 'package:english_project/app/features/news/presentation/PDF/pdf_page.dart'
    as _i14;
import 'package:english_project/app/features/search_word/presentation/search_word.dart'
    as _i15;
import 'package:english_project/app/features/user_account/presentation/custom_profile/custom_infomation_page.dart'
    as _i16;
import 'package:english_project/app/features/user_account/presentation/premium/premium_page.dart'
    as _i17;
import 'package:english_project/app/features/user_account/user_account_page.dart'
    as _i18;
import 'package:english_project/main_page.dart' as _i19;
import 'package:flutter/material.dart' as _i21;

abstract class $AppAutoRoute extends _i20.RootStackRouter {
  $AppAutoRoute({super.navigatorKey});

  @override
  final Map<String, _i20.PageFactory> pagesMap = {
    WaitingLoginRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.WaitingLoginPage(),
      );
    },
    WaitingScreenRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.WaitingScreenPage(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ForgotPasswordPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.RegisterPage(),
      );
    },
    FavoriteNewsRoute.name: (routeData) {
      final args = routeData.argsAs<FavoriteNewsRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.FavoriteNewsPage(
          key: args.key,
          premium: args.premium,
        ),
      );
    },
    LearnVocabularyRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LearnVocabularyPage(),
      );
    },
    CourseRoute.name: (routeData) {
      final args = routeData.argsAs<CourseRouteArgs>(
          orElse: () => const CourseRouteArgs());
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.CoursePage(
          key: args.key,
          name: args.name,
          id: args.id,
        ),
      );
    },
    Export.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.Export(),
      );
    },
    Import.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.Import(),
      );
    },
    LessonRoute.name: (routeData) {
      final args = routeData.argsAs<LessonRouteArgs>(
          orElse: () => const LessonRouteArgs());
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.LessonPage(
          key: args.key,
          id: args.id,
          premium: args.premium,
        ),
      );
    },
    NewsRoute.name: (routeData) {
      final args = routeData.argsAs<NewsRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.NewsPage(
          key: args.key,
          stateAuth: args.stateAuth,
        ),
      );
    },
    NewsReadRoute.name: (routeData) {
      final args = routeData.argsAs<NewsReadRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.NewsReadPage(
          key: args.key,
          url: args.url,
          choice: args.choice,
          premium: args.premium,
        ),
      );
    },
    PDFRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.PDFPage(),
      );
    },
    SearchWordRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.SearchWordPage(),
      );
    },
    CustomInformationRoute.name: (routeData) {
      final args = routeData.argsAs<CustomInformationRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.CustomInformationPage(
          key: args.key,
          time: args.time,
        ),
      );
    },
    PremiumRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.PremiumPage(),
      );
    },
    UserAccountRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.UserAccountPage(),
      );
    },
    MainRoute.name: (routeData) {
      final args = routeData.argsAs<MainRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.MainPage(
          key: args.key,
          stateAuth: args.stateAuth,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.WaitingLoginPage]
class WaitingLoginRoute extends _i20.PageRouteInfo<void> {
  const WaitingLoginRoute({List<_i20.PageRouteInfo>? children})
      : super(
          WaitingLoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'WaitingLoginRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i2.WaitingScreenPage]
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
/// [_i3.ForgotPasswordPage]
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
/// [_i4.LoginPage]
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
/// [_i5.RegisterPage]
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
/// [_i6.FavoriteNewsPage]
class FavoriteNewsRoute extends _i20.PageRouteInfo<FavoriteNewsRouteArgs> {
  FavoriteNewsRoute({
    _i21.Key? key,
    required bool premium,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          FavoriteNewsRoute.name,
          args: FavoriteNewsRouteArgs(
            key: key,
            premium: premium,
          ),
          initialChildren: children,
        );

  static const String name = 'FavoriteNewsRoute';

  static const _i20.PageInfo<FavoriteNewsRouteArgs> page =
      _i20.PageInfo<FavoriteNewsRouteArgs>(name);
}

class FavoriteNewsRouteArgs {
  const FavoriteNewsRouteArgs({
    this.key,
    required this.premium,
  });

  final _i21.Key? key;

  final bool premium;

  @override
  String toString() {
    return 'FavoriteNewsRouteArgs{key: $key, premium: $premium}';
  }
}

/// generated route for
/// [_i7.LearnVocabularyPage]
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
/// [_i8.CoursePage]
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
/// [_i9.Export]
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
/// [_i10.Import]
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
/// [_i11.LessonPage]
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
/// [_i12.NewsPage]
class NewsRoute extends _i20.PageRouteInfo<NewsRouteArgs> {
  NewsRoute({
    _i21.Key? key,
    required _i22.CheckauthState stateAuth,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          NewsRoute.name,
          args: NewsRouteArgs(
            key: key,
            stateAuth: stateAuth,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const _i20.PageInfo<NewsRouteArgs> page =
      _i20.PageInfo<NewsRouteArgs>(name);
}

class NewsRouteArgs {
  const NewsRouteArgs({
    this.key,
    required this.stateAuth,
  });

  final _i21.Key? key;

  final _i22.CheckauthState stateAuth;

  @override
  String toString() {
    return 'NewsRouteArgs{key: $key, stateAuth: $stateAuth}';
  }
}

/// generated route for
/// [_i13.NewsReadPage]
class NewsReadRoute extends _i20.PageRouteInfo<NewsReadRouteArgs> {
  NewsReadRoute({
    _i21.Key? key,
    required String url,
    required int choice,
    required bool? premium,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          NewsReadRoute.name,
          args: NewsReadRouteArgs(
            key: key,
            url: url,
            choice: choice,
            premium: premium,
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
    required this.premium,
  });

  final _i21.Key? key;

  final String url;

  final int choice;

  final bool? premium;

  @override
  String toString() {
    return 'NewsReadRouteArgs{key: $key, url: $url, choice: $choice, premium: $premium}';
  }
}

/// generated route for
/// [_i14.PDFPage]
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
/// [_i15.SearchWordPage]
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
/// [_i16.CustomInformationPage]
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
/// [_i17.PremiumPage]
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
/// [_i18.UserAccountPage]
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
/// [_i19.MainPage]
class MainRoute extends _i20.PageRouteInfo<MainRouteArgs> {
  MainRoute({
    _i21.Key? key,
    required _i22.CheckauthState stateAuth,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          MainRoute.name,
          args: MainRouteArgs(
            key: key,
            stateAuth: stateAuth,
          ),
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i20.PageInfo<MainRouteArgs> page =
      _i20.PageInfo<MainRouteArgs>(name);
}

class MainRouteArgs {
  const MainRouteArgs({
    this.key,
    required this.stateAuth,
  });

  final _i21.Key? key;

  final _i22.CheckauthState stateAuth;

  @override
  String toString() {
    return 'MainRouteArgs{key: $key, stateAuth: $stateAuth}';
  }
}
