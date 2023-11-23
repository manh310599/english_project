part of 'checkauth_bloc.dart';

enum CheckAuth { logged, loggedOut }

@freezed
class CheckauthState with _$CheckauthState {
  const CheckauthState._();

  const factory CheckauthState({
    @Default(null) CheckAuth? checkAuth,
    @Default(null) User? user,
    @Default(null) UserData? idUser,
    @Default(null) BannerAd? bannerAd,
  }) = _CheckauthState;
}
