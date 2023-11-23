import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:english_project/app/common/model/user_data.dart';
import 'package:english_project/app/common/service/admob.dart';
import 'package:firebase_auth/firebase_auth.dart';
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

  final check = FirebaseAuth.instance;
  final data = FirebaseFirestore.instance;

  Future<void> checkLogin(event, Emitter<CheckauthState> emit) async {
    final currentUser = check.currentUser;

    if (currentUser != null) {
      final information =
          await data.collection('users').doc(currentUser.uid).get();

      emit(
        state.copyWith(
          checkAuth: CheckAuth.logged,
          user: currentUser,
          idUser: UserData.fromFirestore(information),
          bannerAd: BannerAd(
            size: AdSize.fullBanner,
            adUnitId: AdMobService.banner,
            listener: AdMobService.bannerAdListener,
            request: const AdRequest(),
          )..load(),
        ),
      );
    } else {
      emit(state.copyWith(checkAuth: CheckAuth.loggedOut, user: null));
    }
  }

  Future<void> Login(event, Emitter<CheckauthState> emit) async {
    final currentUser = check.currentUser;

    final information =
        await data.collection('users').doc(currentUser?.uid).get();

    emit(
      state.copyWith(
        checkAuth: CheckAuth.logged,
        user: currentUser,
        idUser: UserData.fromFirestore(information),
        bannerAd: BannerAd(
          size: AdSize.fullBanner,
          adUnitId: AdMobService.banner,
          listener: AdMobService.bannerAdListener,
          request: const AdRequest(),
        )..load(),
      ),
    );
  }

  Future<void> LogOut(event, Emitter<CheckauthState> emit) async {
    emit(state.copyWith(checkAuth: CheckAuth.loggedOut, user: null,idUser: null,bannerAd: null));
  }

  Future<void> ChangeProfile(event, Emitter<CheckauthState> emit) async {
    User? user = check.currentUser;

    try {
      await user?.updateDisplayName(const _ChangeProfile().name);
      await user?.reload();
      emit(state.copyWith(user: user));

    } catch (e) {
      print("Lỗi khi cập nhật tên hiển thị: $e");
    }
  }
}
