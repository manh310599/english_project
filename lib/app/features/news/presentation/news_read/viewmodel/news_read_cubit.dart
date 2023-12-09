import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:english_project/app/common/service/admob.dart';
import 'package:english_project/app/features/news/presentation/news_read/views/news_search_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../../../dimens.dart';

part 'news_read_cubit.freezed.dart';

part 'news_read_state.dart';

class NewsReadCubit extends Cubit<NewsReadState> {
  NewsReadCubit() : super(const NewsReadState());

  InAppWebViewController? webViewController;

  late bool? checkPremium;
  bool flagBottom = false;
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
        loading: true,
        bannerAd: BannerAd(
          size: AdSize.fullBanner,
          adUnitId: AdMobService.banner,
          listener: AdMobService.bannerAdListener,
          request: const AdRequest(),
        )..load(),
      ));
    }
  }

  Future<void> selectAndPrintText(BuildContext context, height, width) async {
    String? selectedText;
    if (webViewController != null && !selectedText.isNotEmptyAndNotNull) {
      // Execute JavaScript code to select text
      selectedText = await webViewController!.evaluateJavascript(
        source: "window.getSelection().toString();",
      );
      await webViewController?.clearFocus();
      await webViewController?.clearCache();
      emit(state.copyWith(word: selectedText));
      await webViewController?.evaluateJavascript(
          source: 'window.getSelection().removeAllRanges();');


    } else {}
  }

  removeSelect(){
    emit(state.copyWith(word: null));
  }
}
