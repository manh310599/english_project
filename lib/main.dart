import 'package:english_project/app/app_route/app_route.gr.dart';
import 'package:flutter/material.dart';

import 'app/app_route/app_route.dart';
import 'depedence.dart';

void main() async {
  await setupAppDepedence();
  runApp(const App());
}



class App extends StatelessWidget {
  const App({super.key});

  AppAutoRoute get appRouter => getIt<AppAutoRoute>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
    );
  }
}
