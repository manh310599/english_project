import 'package:auto_route/annotations.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

@RoutePage()
class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () {
      Future<void> _signOut() async {
        await FirebaseAuth.instance.signOut();

        Phoenix.rebirth(context);
      }
      _signOut();
    },child: const Placeholder());
  }
}
