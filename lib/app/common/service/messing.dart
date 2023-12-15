import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

class FirebaseMessApi {
  final _firebaseMessing = FirebaseMessaging.instance;

  Future<String?> initNotification() async {
    await _firebaseMessing.requestPermission();

    final fCMToken = await _firebaseMessing.getToken();

    debugPrint('Token :$fCMToken');
    return fCMToken;
  }
}