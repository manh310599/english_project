import 'package:auto_route/auto_route.dart';
import 'package:english_project/app/app_route/app_route.gr.dart';
import 'package:firebase_auth/firebase_auth.dart';

bool check = true;

class AuthGuard implements AutoRouteGuard {


  @override
  Future<void> onNavigation(NavigationResolver resolver,
      StackRouter router) async {
    FirebaseAuth.instance.authStateChanges().listen((User? user) async {
      if (user == null) {
        check = false;
        await router.navigate(const LoginRoute());
      } else {

        resolver.next();
      }
    });
  }
}
