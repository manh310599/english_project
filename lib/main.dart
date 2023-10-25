import 'package:english_project/check_internet.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'app/app_route/app_route.dart';
import 'depedence.dart';

void main() async {
  await setupAppDepedence();
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}



class _AppState extends State<App> {

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  AppAutoRoute get appRouter => getIt<AppAutoRoute>();
  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
    );
  }
}



