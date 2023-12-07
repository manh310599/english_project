import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:english_project/app/common/model/user_data.dart';
import 'package:english_project/app/common/service/admob.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

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
  final StreamController<bool>  premiumController = StreamController<bool>.broadcast();
  Stream<bool> get premiumStream => premiumController.stream;
  StreamSink<bool> get gbaSink => premiumController.sink;

  final check = FirebaseAuth.instance;
  final data = FirebaseFirestore.instance;

  Future<void> checkLogin(event, Emitter<CheckauthState> emit) async {
    final currentUser = check.currentUser;

    if (currentUser != null) {
      final information =
          await data.collection('users').doc(currentUser.uid).get();

      UserData u =  UserData.fromFirestore(information);

      if (u.finalDayPremium! < DateTime.now().millisecondsSinceEpoch){
        gbaSink.add(false);
        premiumStream.listen((event) {
          debugPrint(event.toString());
        });
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
            premium: false
          ),
        );
      }
      else{
        gbaSink.add(true);
        premiumStream.listen((event) {
          debugPrint(event.toString());
        });
        emit(
          state.copyWith(
            checkAuth: CheckAuth.logged,
            user: currentUser,
            idUser: u,
            bannerAd: null,
            premium: true
          ),

        );
      }


    } else {
      emit(state.copyWith(checkAuth: CheckAuth.loggedOut, user: null,premium: null));
    }
  }

  Future<void> Login(event, Emitter<CheckauthState> emit) async {
    final currentUser = check.currentUser;

    final information =
        await data.collection('users').doc(currentUser?.uid).get();

    UserData u =  UserData.fromFirestore(information);
    if (u.finalDayPremium! < DateTime.now().millisecondsSinceEpoch){
      gbaSink.add(false);
      premiumStream.listen((event) {
        debugPrint(event.toString());
      });
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
          premium: false
        ),
      );
    }
    else{
      gbaSink.add(true);
      premiumStream.listen((event) {
        debugPrint(event.toString());
      });premiumStream.listen((event) {
        debugPrint(event.toString());
      });
      emit(
        state.copyWith(
          checkAuth: CheckAuth.logged,
          user: currentUser,
          idUser: u,
          bannerAd: null,
          premium: true
        ),
      );
    }
  }

  Future<void> LogOut(event, Emitter<CheckauthState> emit) async {
    gbaSink.add(false);
    emit(state.copyWith(
        checkAuth: CheckAuth.loggedOut,
        user: null,
        idUser: null,
        bannerAd: null,premium: null));
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
