import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

late StreamSubscription subscription;

getConnect(context) =>
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) async {
      InternetConnectionStatus status =
      await InternetConnectionChecker().connectionStatus;

      if (status == InternetConnectionStatus.disconnected
      ) {
        showDiaLogBox(context);
      }

    });

showDiaLogBox(context) =>
    showDialog(
      context: context,
      builder: (context) {
        return const CupertinoAlertDialog(
          title: Center(child: Text("Không có kết nối internet")),
          content: Center(child: Text("Vui lòng kết nôi")),
          insetAnimationCurve: Curves.bounceIn,
        );
      },
    );
