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

  Future<void> setPageNews(bool? check, context) async {
    checkPremium = check;
    if (checkPremium == false) {
      _createInterstitialAd();
    }

  }

  @override
  Future<void> close() async {
    print('check $checkPremium');
    if(checkPremium == false){
      if (interstitialAd != null) {
        interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
          onAdDismissedFullScreenContent: (ad) {
            ad.dispose();
            _createInterstitialAd();
          },
          onAdFailedToShowFullScreenContent: (ad, error) {
            ad.dispose();
            _createInterstitialAd();
          },
        );
        interstitialAd!.show();
        interstitialAd = null;
      }
    }

    return super.close();
  }
}
