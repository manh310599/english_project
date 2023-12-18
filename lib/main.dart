import 'dart:async';

import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/app_route/app_route.gr.dart';
import 'package:english_project/app/common/service/local_push_notification.dart';
import 'package:english_project/app/features/auth/presentation/check_user/viewmodel/checkauth_bloc.dart';
import 'package:english_project/check_internet.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/app_route/app_route.dart';
import 'depedence.dart';
import 'firebase_options.dart';

Future<void> main() async {
  await setupAppDepedence();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  LocalNotificationService.initialize();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  MobileAds.instance.initialize();
  FlutterNativeSplash.remove();

  requestPermission();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final first = prefs.getBool('first');
  runApp(App(
    first: first,
  ));

  FlutterError.onError = (error) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(error);
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
}

requestPermission() async {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    sound: true,
  );
  settings;
}

class App extends StatefulWidget {
  const App({super.key, this.first});

  final bool? first;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  static FirebaseAnalytics analytic = FirebaseAnalytics.instance;

  AppAutoRoute get appRouter => getIt<AppAutoRoute>();

  @override
  void initState() {
    // TODO: implement initState
    analytic.setAnalyticsCollectionEnabled(true);
    FirebaseMessaging.instance.getInitialMessage();
    FirebaseMessaging.onMessage.listen((event) {
      LocalNotificationService.display(event);
    });
    getConnect(context);
    super.initState();
  }

  // final StreamController<CheckAuth> loginController =
  //     StreamController<CheckAuth>.broadcast();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CheckauthBloc()..add(const CheckauthEvent.stated()),
      child: BlocListener<CheckauthBloc, CheckauthState>(
        listener: (context, state) {
          print('vuive   ${state.premium}');
          if (state.checkAuth == CheckAuth.loggedOut) {
            appRouter.navigate(const LoginRoute());
          } else if (state.checkAuth == CheckAuth.logged) {
            appRouter.navigate(MainRoute(stateAuth: state));
          } else if (state.checkAuth == CheckAuth.login) {
            appRouter.navigate(const WaitingLoginRoute());
          }
        },
        child: MaterialApp.router(
          theme: ThemeData.dark(),
          darkTheme: ThemeData.dark(),
          highContrastDarkTheme: ThemeData.dark(),
          themeMode: ThemeMode.dark,
          highContrastTheme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          routerConfig: appRouter.config(),
        ),
      ),
    );
  }
}
