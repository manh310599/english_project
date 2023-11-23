import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/common/api_status.dart';
import 'package:english_project/app/common/database/query_database.dart';
import 'package:english_project/app/common/service/admob.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../../../../common/model/storage_database.dart';

part 'lesson_cubit.freezed.dart';

part 'lesson_state.dart';

class LessonCubit extends Cubit<LessonState> {
  LessonCubit() : super(const LessonState());

  RewardedAd? _rewardedAd;
  late final bool? checkPremium;

  void _loadReWardedAd() {
    RewardedAd.load(
        adUnitId: AdMobService.rewarded,
        request: const AdRequest(),
        rewardedAdLoadCallback: RewardedAdLoadCallback(
          onAdLoaded: (ad) => _rewardedAd = ad,
          onAdFailedToLoad: (error) => _rewardedAd = null,
        ));
  }

  FlipCardController controller = FlipCardController();
  QueryDatabase queryDatabase = QueryDatabase();
  final now = DateTime.now().millisecondsSinceEpoch;
  final n = DateTime.now();

  Future<void> getListWordsByDay(
    int id,
    bool? premium,
  ) async {
    checkPremium = premium;
    if (checkPremium == false) {
      _loadReWardedAd();
    }
    int date = DateTime.now().millisecondsSinceEpoch;
    print(date);
    final data = await queryDatabase.getAllFromDate(date, id);
    debugPrint(data.toString());
    List<Words?>? list = [];
    data?.forEach((element) {
      list.add(Words.fromJson(element));
    });

    emit(state.copyWith(
      words: list,
    ));
  }

  Future<void> setTime() async {
    try {
      if (state.words?[state.indexInLesson!]?.checkNew == 0 &&
          state.words?[state.indexInLesson!]?.lastChoice == 3) {
        emit(
          state.copyWith(
            againTime: convertTime(forecastTimeMinute(1)),
            hardTime: convertTime(forecastTimeMinute(10)),
            goodTime: convertTime(forecastTimeDays(1)),
            easyTime: convertTime(forecastTimeDays(4)),
          ),
        );
      } else if (state.words?[state.indexInLesson!]?.checkNew == 0 &&
          state.words?[state.indexInLesson!]?.lastChoice == 0) {
        emit(
          state.copyWith(
            againTime: convertTime(forecastTimeMinute(1)),
            hardTime: convertTime(forecastTimeMinute(6)),
            goodTime: convertTime(forecastTimeMinute(10)),
            easyTime: convertTime(forecastTimeDays(4)),
          ),
        );
      } else {
        emit(
          state.copyWith(
            againTime: convertTime(forecastTimeMinute(10)),
            hardTime: convertTime(forecastTimeDays(intervalTime(
                state.words![state.indexInLesson!]!.interval!,
                1,
                state.words![state.indexInLesson!]!.ease!))),
            goodTime: convertTime(forecastTimeDays(intervalTime(
                state.words![state.indexInLesson!]!.interval!,
                2,
                state.words![state.indexInLesson!]!.ease!))),
            easyTime: convertTime(forecastTimeDays(intervalTime(
                state.words![state.indexInLesson!]!.interval!,
                3,
                state.words![state.indexInLesson!]!.ease!))),
          ),
        );
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> giveChoice() async {
    emit(state.copyWith(checkBackCard: true));
    await setTime();
  }

  Future<void> again() async {
    checkBackCard(0);
  }

  Future<void> hard() async {
    checkBackCard(1);
  }

  Future<void> good() async {
    checkBackCard(2);
  }

  Future<void> easy() async {
    checkBackCard(3);
  }

  controllerFlipCard() {
    controller.flipCard();
  }

  checkBackCard(int choice) async {
    emit(state.copyWith(checkBackCard: false));

    if (choice == 0) {
      if (state.words?[state.indexInLesson!]?.checkNew == 0) {
        List<Words?>? temp = [];
        temp.addAll(state.words!);
        Words? tempWord = state.words?[state.indexInLesson!];
        temp.removeAt(state.indexInLesson!);

        temp.add(tempWord?.copyWith(lastChoice: choice + 1, interval: 0));
        emit(state.copyWith(
          words: temp,
          apiStatus: ApiStatus.success,
        ));
      } else {
        List<Words?>? temp = [];
        temp.addAll(state.words!);
        Words? tempWord = state.words?[state.indexInLesson!];
        temp.removeAt(state.indexInLesson!);

        temp.add(tempWord?.copyWith(
            lastChoice: choice + 1, interval: 0, ease: 2.5, checkNew: 0));
        emit(state.copyWith(words: temp, apiStatus: ApiStatus.success));
      }
    } else if (choice == 1) {
      if (state.words?[state.indexInLesson!]?.checkNew == 0) {
        List<Words?>? temp = [];
        temp.addAll(state.words!);
        Words? tempWord = state.words?[state.indexInLesson!];
        temp.removeAt(state.indexInLesson!);

        temp.add(tempWord?.copyWith(lastChoice: choice + 1, interval: 0));
        emit(state.copyWith(words: temp, apiStatus: ApiStatus.success));
      } else {
        int interval = intervalTime(
            state.words![state.indexInLesson!]!.interval!,
            choice,
            state.words![state.indexInLesson!]!.ease!);
        double e = ease(choice, state.words?[state.indexInLesson!]?.ease);
        if (e <= 1.3) {
          await queryDatabase.updateWords(
              state.words?[state.indexInLesson!]?.word,
              DateTime(n.year, n.month, n.day, 0, 0, 0, 0, 0)
                  .add(const Duration(days: 1))
                  .millisecondsSinceEpoch,
              0,
              choice + 1,
              1,
              2.5);
        } else {
          await queryDatabase.updateWords(
              state.words?[state.indexInLesson!]?.word,
              DateTime(n.year, n.month, n.day, 0, 0, 0, 0, 0)
                  .add(Duration(days: interval))
                  .millisecondsSinceEpoch,
              1,
              choice + 1,
              interval,
              e);
        }
        List<Words?>? temp = [];
        temp.addAll(state.words!);
        temp.removeAt(state.indexInLesson!);
        emit(state.copyWith(words: temp, apiStatus: ApiStatus.success));
      }
    } else if (choice == 2) {
      if (state.words?[state.indexInLesson!]?.checkNew == 0 &&
          state.words?[state.indexInLesson!]?.lastChoice == 3) {
        await queryDatabase.updateWords(
            state.words?[state.indexInLesson!]?.word,
            DateTime(n.year, n.month, n.day, 0, 0, 0, 0, 0)
                .add(const Duration(days: 1))
                .millisecondsSinceEpoch,
            1,
            choice + 1,
            1,
            2.5);
        List<Words?>? temp = [];
        temp.addAll(state.words!);
        temp.removeAt(state.indexInLesson!);
        emit(state.copyWith(words: temp, apiStatus: ApiStatus.success));
      } else if (state.words?[state.indexInLesson!]?.checkNew == 0) {
        List<Words?>? temp = [];
        temp.addAll(state.words!);
        Words? tempWord = state.words?[state.indexInLesson!];
        temp.removeAt(state.indexInLesson!);

        temp.add(tempWord?.copyWith(lastChoice: choice + 1, interval: 0));
        emit(state.copyWith(words: temp, apiStatus: ApiStatus.success));
        print(state.words);
      } else if (state.words?[state.indexInLesson!]?.checkNew != 0) {
        int interval = intervalTime(
            state.words![state.indexInLesson!]!.interval!,
            choice,
            state.words![state.indexInLesson!]!.ease!);
        double e = ease(choice, state.words?[state.indexInLesson!]?.ease);
        await queryDatabase.updateWords(
            state.words?[state.indexInLesson!]?.word,
            DateTime(n.year, n.month, n.day, 0, 0, 0, 0, 0)
                .add(Duration(days: interval))
                .millisecondsSinceEpoch,
            1,
            choice + 1,
            interval,
            e);
        List<Words?>? temp = [];
        temp.addAll(state.words!);
        temp.removeAt(state.indexInLesson!);
        emit(state.copyWith(words: temp));
      }
    } else if (choice == 3) {
      if (state.words?[state.indexInLesson!]?.checkNew == 0) {
        await queryDatabase.updateWords(
            state.words?[state.indexInLesson!]?.word,
            DateTime(n.year, n.month, n.day, 0, 0, 0, 0, 0)
                .add(const Duration(days: 4))
                .millisecondsSinceEpoch,
            1,
            choice + 1,
            4,
            2.5);
        List<Words?>? temp = [];
        temp.addAll(state.words!);
        temp.removeAt(state.indexInLesson!);
        emit(state.copyWith(words: temp, apiStatus: ApiStatus.success));
        print(state.words);
      } else {
        int interval = intervalTime(
            state.words![state.indexInLesson!]!.interval!,
            choice,
            state.words![state.indexInLesson!]!.ease!);
        double e = ease(choice, state.words?[state.indexInLesson!]?.ease);
        await queryDatabase.updateWords(
            state.words?[state.indexInLesson!]?.word,
            DateTime(n.year, n.month, n.day, 0, 0, 0, 0, 0)
                .add(Duration(days: interval))
                .millisecondsSinceEpoch,
            1,
            choice + 1,
            interval,
            e);
        List<Words?>? temp = [];
        temp.addAll(state.words!);
        temp.removeAt(state.indexInLesson!);
        emit(state.copyWith(words: temp, apiStatus: ApiStatus.success));
      }
    }

    state.apiStatus == ApiStatus.success;
  }

  int forecastTimeMinute(int minute) {
    final dateTime =
        DateTime.now().add(Duration(minutes: minute)).millisecondsSinceEpoch;
    return dateTime - now;
  }

  int forecastTimeDays(int days) {
    final dateTime =
        DateTime.now().add(Duration(days: days)).millisecondsSinceEpoch;
    return dateTime - now;
  }

  int intervalTime(int interval, int choice, double? e) {
    return choice == 2 || choice == 1
        ? (ease(choice, e) * interval).round()
        : (ease(choice, e) * interval * 1.3).round();
  }

  int convertTimeToDay(int millisecondsSinceEpoch) {
    return (millisecondsSinceEpoch / 1000 / 24 / 60 / 60).truncate();
  }

  String convertTime(int millisecondsSinceEpoch) {
    if (millisecondsSinceEpoch < 3600000) {
      final minute = (millisecondsSinceEpoch / 1000 / 60).truncate();

      String formattedTime = "$minute phút";
      return formattedTime;
    } else if (millisecondsSinceEpoch >= 3600003 &&
        millisecondsSinceEpoch < 86400000) {
      final hour = (millisecondsSinceEpoch / 1000 / 60 / 60).truncate();

      String formattedTime = "$hour";
      return formattedTime;
    } else if (millisecondsSinceEpoch >= 86400000 &&
        millisecondsSinceEpoch < 2592000000) {
      final days = (millisecondsSinceEpoch / 1000 / 24 / 60 / 60).truncate();

      String formattedTime = "$days ngày";
      return formattedTime;
    } else if (millisecondsSinceEpoch >= 2592000000) {
      {
        final month =
            (millisecondsSinceEpoch / 1000 / 30 / 24 / 60 / 60).truncate();

        String formattedTime = "$month tháng";
        return formattedTime;
      }
    } else {
      return '';
    }
  }

  double ease(int gradle, double? e) {
    e = e! + 0.1 - (3 - gradle) * (0.08 + (3 - gradle) * 0.02);
    return e;
  }

  @override
  Future<void> close() {
    // TODO: implement close
    if (checkPremium == false) {
      if (_rewardedAd != null) {
        _rewardedAd?.fullScreenContentCallback = FullScreenContentCallback(
          onAdDismissedFullScreenContent: (ad) {
            ad.dispose();
            _loadReWardedAd();
          },
          onAdFailedToShowFullScreenContent: (ad, error) {
            ad.dispose();
            _loadReWardedAd();
          },
        );
        _rewardedAd?.show(
          onUserEarnedReward: (ad, reward) {},
        );
      }
    }

    return super.close();
  }
}
