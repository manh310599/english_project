import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:english_project/app/common/service/admob.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

part 'news_read_cubit.freezed.dart';

part 'news_read_state.dart';

class NewsReadCubit extends Cubit<NewsReadState> {
  NewsReadCubit() : super(const NewsReadState());

  InAppWebViewController? webViewController;

  late bool? checkPremium;

  final ContentBlocker contentBlocker = ContentBlocker(
      trigger: ContentBlockerTrigger(
          urlFilter: 'https://easylist.to/easylist/easylist.txt'),
      action: ContentBlockerAction(type: ContentBlockerActionType.BLOCK));

  void loadedWeb(int choice) {
    if (choice == 1) {
      emit(state.copyWith(
        loading: true,
        bannerAd: BannerAd(
          size: AdSize.fullBanner,
          adUnitId: AdMobService.banner,
          listener: AdMobService.bannerAdListener,
          request: const AdRequest(),
        )..load(),
      ));
    } else {
      emit(state.copyWith(
        bannerAd: BannerAd(
          size: AdSize.fullBanner,
          adUnitId: AdMobService.banner,
          listener: AdMobService.bannerAdListener,
          request: const AdRequest(),
        )..load(),
      ));
    }
  }

  Future<String?> selectAndPrintText() async {
    if (webViewController != null) {
      // Execute JavaScript code to select text
      final selectedText = await webViewController!.evaluateJavascript(
        source: "window.getSelection().toString();",
      );

      emit(state.copyWith(word: selectedText));
      await webViewController?.evaluateJavascript(source: 'window.getSelection().removeAllRanges();');
      return selectedText;
    } else {
      return null;
    }
  }

  reset(){
    emit(state.copyWith(word: null));
  }
}
