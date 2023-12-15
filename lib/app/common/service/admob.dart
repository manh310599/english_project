import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdMobService {
  bool isDebugMode = kDebugMode;
  static const banner = kDebugMode == true
      ? 'ca-app-pub-3940256099942544/6300978111'
      : 'ca-app-pub-3156525907485254/6624021624';

  static const banner2 = kDebugMode == true
      ? 'ca-app-pub-3940256099942544/6300978111'
      : 'ca-app-pub-3156525907485254/8164914563';

  static const banner3 = kDebugMode == true
      ? 'ca-app-pub-3940256099942544/6300978111'
      : 'ca-app-pub-3156525907485254/2187431636';

  static const interstitial = kDebugMode == true
      ? 'ca-app-pub-3940256099942544/1033173712'
      : 'ca-app-pub-3156525907485254/7931940265';
  static const rewarded = kDebugMode == true
      ? 'ca-app-pub-3940256099942544/5224354917'
      : 'ca-app-pub-3156525907485254/3434713510';

  static final BannerAdListener bannerAdListener = BannerAdListener(
      onAdLoaded: (ad) => debugPrint('load thành công'),
      onAdFailedToLoad: (ad, error) {
        ad.dispose();
        debugPrint('load thất bại $error');
      },
      onAdOpened: (ad) => debugPrint('ads đã được bật'),
      onAdClosed: (ad) => debugPrint('ads đã đóng lại'));
}
