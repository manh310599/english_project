import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:english_project/app/common/model/user_data.dart';
import 'package:english_project/app/common/service/admob.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../../../../common/service/messing.dart';

part 'checkauth_bloc.freezed.dart';

part 'checkauth_event.dart';

part 'checkauth_state.dart';

class CheckauthBloc extends Bloc<CheckauthEvent, CheckauthState> {
  CheckauthBloc() : super(const CheckauthState()) {
    on<_Stated>(checkLogin);
    on<_Logged>(Login);
    on<_Logout>(LogOut);
    on<_ChangeProfile>(ChangeProfile);
  }

  final StreamController<CheckAuth> loginController =
      StreamController<CheckAuth>.broadcast();

  Stream<CheckAuth> get loginStream => loginController.stream;

  StreamSink<CheckAuth> get gbaSink => loginController.sink;

  final check = FirebaseAuth.instance;
  final data = FirebaseFirestore.instance;

  Future<void> checkLogin(event, Emitter<CheckauthState> emit) async {
    final token = await FirebaseMessApi().initNotification();
    emit(state.copyWith(checkAuth: CheckAuth.login));
    final currentUser = check.currentUser;
    try {
      if (currentUser != null) {
        final information =
            await data.collection('users').doc(currentUser.uid).get();

        UserData u = UserData.fromFirestore(information);
        print('khó hiểu ${u.finalDayPremium}');
        print(DateTime.now().millisecondsSinceEpoch);
        if (u.finalDayPremium! < DateTime.now().millisecondsSinceEpoch) {
          emit(
            state.copyWith(
                checkAuth: CheckAuth.logged,
                user: currentUser,
                gift: u.gift,
                idUser: UserData.fromFirestore(information),
                bannerAd: BannerAd(
                  size: AdSize.fullBanner,
                  adUnitId: AdMobService.banner,
                  listener: AdMobService.bannerAdListener,
                  request: const AdRequest(),
                )..load(),
                premium: false),
          );
          data
              .collection('users')
              .doc(check.currentUser?.uid)
              .update({'tokent': token});
          gbaSink.add(CheckAuth.logged);
        } else {
          emit(
            state.copyWith(
                checkAuth: CheckAuth.logged,
                user: currentUser,
                gift: u.gift,
                idUser: UserData.fromFirestore(information),
                bannerAd: null,
                premium: true),
          );
          data
              .collection('users')
              .doc(check.currentUser?.uid)
              .update({'tokent': token});
          gbaSink.add(CheckAuth.logged);
        }
      } else {
        emit(state.copyWith(
            checkAuth: CheckAuth.loggedOut,
            idUser: null,
            user: null,
            premium: null));
        gbaSink.add(CheckAuth.loggedOut);
      }
    } catch (_) {
      emit(state.copyWith(
          checkAuth: CheckAuth.loggedOut,
          idUser: null,
          user: null,
          premium: null));
      gbaSink.add(CheckAuth.loggedOut);
    }
  }

  Future<void> Login(event, Emitter<CheckauthState> emit) async {
    final token = await FirebaseMessApi().initNotification();
    emit(state.copyWith(checkAuth: CheckAuth.login));
    await Future.delayed(const Duration(seconds: 1));
    final currentUser = check.currentUser;

    final information =
        await data.collection('users').doc(currentUser?.uid).get();
    UserData u = UserData.fromFirestore(information);
    print('khó hiểu ${u.finalDayPremium}');
    try {
      UserData u = UserData.fromFirestore(information);
      if (u.finalDayPremium! < DateTime.now().millisecondsSinceEpoch) {
        emit(
          state.copyWith(
              checkAuth: CheckAuth.logged,
              user: currentUser,
              idUser: u,
              bannerAd: BannerAd(
                size: AdSize.fullBanner,
                adUnitId: AdMobService.banner,
                listener: AdMobService.bannerAdListener,
                request: const AdRequest(),
              )..load(),
              premium: false),
        );
        data
            .collection('users')
            .doc(check.currentUser?.uid)
            .update({'tokent': token});
        gbaSink.add(CheckAuth.logged);
      } else {
        emit(
          state.copyWith(
              checkAuth: CheckAuth.logged,
              user: currentUser,
              idUser: u,
              gift: u.gift,
              bannerAd: null,
              premium: true),
        );
        data
            .collection('users')
            .doc(check.currentUser?.uid)
            .update({'tokent': token});
        gbaSink.add(CheckAuth.logged);
      }
    } catch (_) {
      emit(state.copyWith(checkAuth: CheckAuth.loggedOut));
      gbaSink.add(CheckAuth.loggedOut);
    }
  }

  Future<void> LogOut(event, Emitter<CheckauthState> emit) async {
    emit(state.copyWith(
        checkAuth: CheckAuth.loggedOut,
        user: null,
        idUser: null,
        bannerAd: null,
        premium: null));
    gbaSink.add(CheckAuth.loggedOut);
  }

  Future<void> ChangeProfile(
    _ChangeProfile event,
    Emitter<CheckauthState> emit,
  ) async {
    User? user = check.currentUser;

    try {
      await user?.updateDisplayName(event.data);
      await user?.reload();
      emit(state.copyWith(user: user));
    } catch (e) {
      print("Lỗi khi cập nhật tên hiển thị: $e");
    }
  }
}
