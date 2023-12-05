import 'package:bloc/bloc.dart';
import 'package:english_project/app/common/service/admob.dart';
import 'package:english_project/app/features/auth/presentation/check_user/viewmodel/checkauth_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

part 'news_read_cubit.freezed.dart';

part 'news_read_state.dart';

class NewsReadCubit extends Cubit<NewsReadState> {
  NewsReadCubit() : super(const NewsReadState());

  InAppWebViewController? webViewController ;


  InterstitialAd? interstitialAd;
  late bool? checkPremium ;
  void _createInterstitialAd() {
    InterstitialAd.load(
        adUnitId: AdMobService.interstitial,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (ad) => interstitialAd = ad,
          onAdFailedToLoad: (error) {
            interstitialAd = null;
          },
        ));
  }

  final ContentBlocker contentBlocker = ContentBlocker(
      trigger: ContentBlockerTrigger(
          urlFilter: 'https://easylist.to/easylist/easylist.txt'),
      action: ContentBlockerAction(type: ContentBlockerActionType.BLOCK));




  void loadedWeb(){
    emit(state.copyWith(loading: true));
  }

  Future<String?> selectAndPrintText() async {
    if (webViewController != null) {
      // Execute JavaScript code to select text
      final selectedText = await webViewController!.evaluateJavascript(
        source: "window.getSelection().toString();",
      );

      emit(state.copyWith(word: selectedText));
      return selectedText;
    }
    else {
      return null;
    }
  }
}
