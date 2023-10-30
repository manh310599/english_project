
import 'package:english_project/check_internet.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

import 'app/app_route/app_route.dart';
import 'depedence.dart';
import 'firebase_options.dart';

Future<void> main() async {
  await setupAppDepedence();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(Phoenix(child: const App()));
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
    getConnect(context);
    super.initState();
  }

  AppAutoRoute get appRouter => getIt<AppAutoRoute>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
    );
  }
}
