import 'package:auto_route/auto_route.dart';
import 'package:english_project/app/app_route/app_route.gr.dart';

final favoriteNews = [
  AutoRoute(
    path: '/favorite-news',
    page: FavoriteNewsRoute.page,
  )
];