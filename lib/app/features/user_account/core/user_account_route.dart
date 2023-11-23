import 'package:auto_route/auto_route.dart';
import 'package:english_project/app/app_route/app_route.gr.dart';

final userAccountRoute = [
  AutoRoute(
    path: '/premium',
    page: PremiumRoute.page,
  ),
  AutoRoute(
    page: CustomInformationRoute.page,
    path: '/custom-information',
  )
];
