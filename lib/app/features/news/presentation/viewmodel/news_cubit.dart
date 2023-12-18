import 'dart:async';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:english_project/app/common/api_status.dart';
import 'package:english_project/app/common/database/query_database.dart';
import 'package:english_project/app/features/auth/presentation/check_user/viewmodel/checkauth_bloc.dart';
import 'package:english_project/app/features/news/core/abs_repo/abs_news_repo.dart';
import 'package:english_project/app/features/news/model/news_model.dart';
import 'package:english_project/depedence.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../../../common/service/admob.dart';

part 'news_cubit.freezed.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit(this.checkauthBloc)
      : super(
          const NewsState(),
        );

  late bool? premium;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  RewardedAd? _rewardedAd;

  final CheckauthBloc checkauthBloc;

  Future<void> loadReWardedAd(BuildContext context) async {
    await RewardedAd.load(
        adUnitId: AdMobService.rewarded,
        request: const AdRequest(),
        rewardedAdLoadCallback: RewardedAdLoadCallback(
          onAdLoaded: (ad) {
            ad.fullScreenContentCallback = FullScreenContentCallback(
                // Called when the ad showed the full screen content.
                onAdShowedFullScreenContent: (ad) {
                  _rewardedAd = ad;
                },
                // Called when an impression occurs on the ad.
                onAdImpression: (ad) {
                  _rewardedAd = ad;
                },
                // Called when the ad failed to show full screen content.
                onAdFailedToShowFullScreenContent: (ad, err) {
                  // Dispose the ad here to free resources.

                  ad.dispose();
                },
                // Called when the ad dismissed full screen content.
                onAdDismissedFullScreenContent: (ad) async {
                  emit(state.copyWith(checkAD: 1));
                  await firebaseFirestore
                      .collection('users')
                      .doc(firebaseAuth.currentUser?.uid)
                      .update(
                    {
                      'gift': DateTime.now()
                          .add(const Duration(hours: 1))
                          .millisecondsSinceEpoch,
                    },
                  );
                },
                // Called when a click is recorded for an ad.
                onAdClicked: (ad) {});

            debugPrint('$ad loaded.');

            _rewardedAd = ad;
          },
          onAdFailedToLoad: (LoadAdError error) async {

            if (FirebaseCrashlytics.instance.isCrashlyticsCollectionEnabled) {
              await FirebaseCrashlytics.instance.recordError(
                  error,
                  StackTrace.current,
                  reason: 'a fatal error',
                  // Pass in 'fatal' argument
                  fatal: true
              );
            }

            debugPrint('RewardedAd failed to load: $error');
            emit(state.copyWith(checkAD: 1));
            await firebaseFirestore
                .collection('users')
                .doc(firebaseAuth.currentUser?.uid)
                .update(
              {
                'gift': DateTime.now()
                    .add(const Duration(hours: 1))
                    .millisecondsSinceEpoch,
              },
            );
          },
        ));


  }

  showAD() async {
    await _rewardedAd?.show(
        onUserEarnedReward: (AdWithoutView ad, RewardItem reward) async {
          emit(state.copyWith(checkAD: 1));
          await firebaseFirestore
              .collection('users')
              .doc(firebaseAuth.currentUser?.uid)
              .update(
            {
              'gift': DateTime.now()
                  .add(const Duration(hours: 1))
                  .millisecondsSinceEpoch,
            },

          );

        });
  }

  NewsRepo newReponsitory = getIt<NewsRepo>();
  QueryDatabase queryDatabase = QueryDatabase();
  late NewModel? temp;

  void getPremium(bool? premium) async {
    this.premium = premium;

  }

  Future<void> getGift(int? time) async {

    if (time != null && state.checkAD == 0) {
      if (time <= DateTime.now().millisecondsSinceEpoch) {
        emit(state.copyWith(checkAD: 0));

      } else {
        emit(state.copyWith(checkAD: 1));

      }
    }

  }

  Future<void> getNewsUpdate() async {
    // checkauthBloc.loginStream.listen((event) {
    //   if (event == CheckAuth.loggedOut) {
    //     emit(const NewsState());
    //   } else {
    //     getNewsUpdate();
    //   }
    // });



    temp = null;
    final data = await newReponsitory.getNewsUpdate();
    final filter = data?.articles
        ?.where((element) =>
            element.source?.id != 'financial-times' &&
            element.source?.id != "the-washington-post")
        .toList();

    emit(state.copyWith(news: data?.copyWith(articles: filter), min: 0));
  }

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

      emit(state.copyWith(news: news, min: 0));
    }
  }
}
