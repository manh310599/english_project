import 'package:auto_route/auto_route.dart';
import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/app_route/app_route.gr.dart';
import 'package:english_project/app/features/auth/presentation/check_user/viewmodel/checkauth_bloc.dart';
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
    return BlocProvider(
      create: (context) => CheckauthBloc()..add(const CheckauthEvent.stated()),
      child: BlocListener<CheckauthBloc, CheckauthState>(
        listener: (context, state) {
          if(state.checkAuth == CheckAuth.logged){

            appRouter.navigate(const MainRoute());
          }
          else if (state.checkAuth == CheckAuth.loggedOut){
            appRouter.navigate(const LoginRoute());

          }
        },
        child: MaterialApp.router(
          theme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          routerConfig: appRouter.config(),
        ),
      ),
    );
  }
}
