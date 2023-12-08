import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bloc/bloc.dart';
import 'package:english_project/app/common/api_status.dart';
import 'package:english_project/app/common/database/query_database.dart';
import 'package:english_project/app/features/news/core/abs_repo/abs_news_repo.dart';
import 'package:english_project/app/features/news/model/news_model.dart';
import 'package:english_project/depedence.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';

import '../../../../common/service/admob.dart';

part 'news_cubit.freezed.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(const NewsState());

  late bool? premium;
 // int? checkAD = 0;

  RewardedAd? _rewardedAd;

  Future<void> loadReWardedAd(BuildContext context) async {
   await RewardedAd.load(
        adUnitId: AdMobService.rewarded,
        request: const AdRequest(),
        rewardedAdLoadCallback: RewardedAdLoadCallback(
          onAdLoaded: (ad) {
            ad.fullScreenContentCallback = FullScreenContentCallback(
                // Called when the ad showed the full screen content.
                onAdShowedFullScreenContent: (ad) {},
                // Called when an impression occurs on the ad.
                onAdImpression: (ad) {},
                // Called when the ad failed to show full screen content.
                onAdFailedToShowFullScreenContent: (ad, err) {
                  // Dispose the ad here to free resources.

                  ad.dispose();
                },
                // Called when the ad dismissed full screen content.
                onAdDismissedFullScreenContent: (ad) {

                  if(state.checkAD == 0) {
                    Dialogs.materialDialog(
                      color: Colors.black,
                      msgAlign: TextAlign.center,
                      msg:
                          'Đây là chính năng nâng cao bạn phải mua hoặc chỉ đơn'
                          ' giản là xem quảng cáo để ủng hộ chúng tôi',
                      title: 'Tính năng tra bất kì trang web nào',
                      lottieBuilder: Lottie.asset(
                        'assets/animation/cry.json',
                        fit: BoxFit.contain,
                      ),
                      context: context,
                      actions: [
                        IconsButton(
                          onPressed: () {
                            ad.dispose();
                          },
                          text: 'Đóng',
                          iconData: Icons.workspace_premium,
                          color: Colors.red,
                          textStyle: const TextStyle(color: Colors.white),
                          iconColor: Colors.white,
                        ),
                        IconsButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          text: 'Tiếp tục xem',
                          iconData: Icons.movie_creation_outlined,
                          color: Colors.blue,
                          textStyle: const TextStyle(color: Colors.white),
                          iconColor: Colors.white,
                        ),
                      ]);
                  }
                },
                // Called when a click is recorded for an ad.
                onAdClicked: (ad) {});

            debugPrint('$ad loaded.');

            _rewardedAd = ad;
          },
          onAdFailedToLoad: (LoadAdError error) {
            debugPrint('RewardedAd failed to load: $error');
          },
        ));

   await _rewardedAd?.show(onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {
      emit(state.copyWith(checkAD: 1));

   });
  }

  NewsRepo newReponsitory = getIt<NewsRepo>();
  QueryDatabase queryDatabase = QueryDatabase();
  late NewModel? temp;

  void getPremium(bool? premium) async {
    this.premium = premium;
  }

  Future<void> getNewsUpdate() async {
    temp = null;
    final data = await newReponsitory.getNewsUpdate();
    final filter = data?.articles
        ?.where((element) =>
            element.source?.id != 'financial-times' &&
            element.source?.id != "the-washington-post")
        .toList();

    emit(state.copyWith(news: data?.copyWith(articles: filter), min: 0));
  }

  Future<void> getBBCNews() async {
    temp = null;
    final data = await newReponsitory.getHeadLinesBBCNew();
    emit(state.copyWith(news: data, min: 0));
  }

  Future<void> getCNNNews() async {
    temp = null;
    final data = await newReponsitory.getHeadLinesCNNNews();
    emit(state.copyWith(news: data, min: 0));
  }

  Future<void> getFoxNews() async {
    temp = null;
    final data = await newReponsitory.getHeadLinesFoxNews();
    emit(state.copyWith(news: data, min: 0));
  }

  // Future<void> getGoogleNews() async {
  //   final data = await newReponsitory.getHeadLinesGoogleNews();
  //   emit(state.copyWith(news: data, min: 0));
  // }

  Future<void> getNewsBusiness() async {
    temp = null;
    final data = await newReponsitory.getNewsBusiness();
    emit(state.copyWith(news: data, min: 0));
  }

  Future<void> getNewsEntertainment() async {
    temp = null;
    final data = await newReponsitory.getNewsEntertainment();
    emit(state.copyWith(news: data, min: 0));
  }

  Future<void> getNewsGeneral() async {
    temp = null;
    final data = await newReponsitory.getNewsGeneral();
    emit(state.copyWith(news: data, min: 0));
  }

  Future<void> getNewsHealth() async {
    temp = null;
    final data = await newReponsitory.getNewsHealth();
    emit(state.copyWith(news: data, min: 0));
  }

  Future<void> getNewsScience() async {
    temp = null;
    final data = await newReponsitory.getNewsScience();
    emit(state.copyWith(news: data, min: 0));
  }

  Future<void> getNewsSports() async {
    temp = null;
    final data = await newReponsitory.getNewsSports();
    emit(state.copyWith(news: data, min: 0));
  }

  Future<void> getNewsTechnology() async {
    temp = null;
    final data = await newReponsitory.getNewsTechnology();
    emit(state.copyWith(news: data, min: 0));
  }

  setPage(int page) {
    emit(state.copyWith(min: page * 10));
  }

  Future<void> saveFavoriteNews(int news) async {
    queryDatabase.addFavoriteNews(
      state.news?.articles?[state.min! + news].title,
      state.news?.articles?[state.min! + news].description,
      state.news?.articles?[state.min! + news].url,
      state.news?.articles?[state.min! + news].urlToImage,
    );
  }

  Future<void> searchNews(String? title, BuildContext context) async {
    temp ??= state.news;
    if (title?.isEmpty == true) {
      AwesomeDialog(
        context: context,
        title: 'bạn phải nhập vào mội dung',
        dialogType: DialogType.error,
        btnOkOnPress: () {},
      ).show();
    } else {
      NewModel? news = NewModel(
          articles: temp?.articles
                  ?.where((element) => element.title!
                      .toLowerCase()
                      .contains(title!.toLowerCase()))
                  .toList() ??
              []);

      print(temp);

      emit(state.copyWith(news: news, min: 0));
    }
  }
}
