part of 'register_cubit.dart';

enum RegisterStatus {
  emailIsEmpty,
  passWordIsEmpty,
  emailIsValid,
  passShort,
  passToWeek,
  registerSuccess,
}

@freezed
class RegisterState with _$RegisterState {
  const RegisterState._();

  const factory RegisterState({
    @Default(ApiStatus.init) ApiStatus? apiStatus,
    @Default(null) CustomUser? customUser,
    @Default(null) RegisterStatus? registerStatus,
  }) = _RegisterState;
}
