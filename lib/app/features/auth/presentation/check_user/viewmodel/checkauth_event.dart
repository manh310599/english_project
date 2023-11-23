part of 'checkauth_bloc.dart';

@freezed
class CheckauthEvent with _$CheckauthEvent {
  const CheckauthEvent._();

  const factory CheckauthEvent.stated() = _Stated;

  const factory CheckauthEvent.logged() = _Logged;

  const factory CheckauthEvent.logOut() = _Logout;

  const factory CheckauthEvent.changeProfile(String? data, ) = _ChangeProfile;
}
