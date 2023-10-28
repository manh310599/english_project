part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const LoginState._();

  const factory LoginState({
    @Default(ApiStatus.init) ApiStatus? apiStatus,
    @Default(null) String? email,
    @Default(null) String? pass,
  }) = _LoginState;
}
