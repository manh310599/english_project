import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

@RoutePage()
class WaitingLoginPage extends StatelessWidget {
  const WaitingLoginPage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Lottie.asset('assets/animation/waiting_login.json'),
      ),
    );
  }
}