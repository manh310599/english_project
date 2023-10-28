import 'package:auto_route/auto_route.dart';
import 'package:english_project/app/app_route/app_route.gr.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    bool check = false;
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        check = true;
        router.push(const LoginRoute());
      } else {
        if(check == true) {
          router.removeLast();
        }
        resolver.next(true);

      }
    });
  }
}
