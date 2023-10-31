import 'package:auto_route/auto_route.dart';
import 'package:english_project/app/app_route/app_route.gr.dart';

final AuthRoutes = [
  AutoRoute(
    path: '/login',
    page:LoginRoute.page,
  ),
  AutoRoute(
    path: '/register',
    page: RegisterRoute.page,
  ),
  AutoRoute(
    path: '/forgot-pass',
    page: ForgotPasswordRoute.page,
  )
];