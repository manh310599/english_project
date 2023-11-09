part of 'forgot_pass_cubit.dart';

@freezed
class ForgotPassState with _$ForgotPassState {
  const ForgotPassState._();
  const factory ForgotPassState({
    @Default(ApiStatus.init) ApiStatus? apiStatus,
    @Default(null) String? email,
}) = _ForgotPassState;

}
