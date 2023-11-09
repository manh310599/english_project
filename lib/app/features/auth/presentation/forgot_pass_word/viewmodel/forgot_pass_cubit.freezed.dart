// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_pass_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgotPassState {
  ApiStatus? get apiStatus => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPassStateCopyWith<ForgotPassState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPassStateCopyWith<$Res> {
  factory $ForgotPassStateCopyWith(
          ForgotPassState value, $Res Function(ForgotPassState) then) =
      _$ForgotPassStateCopyWithImpl<$Res, ForgotPassState>;
  @useResult
  $Res call({ApiStatus? apiStatus, String? email});
}

/// @nodoc
class _$ForgotPassStateCopyWithImpl<$Res, $Val extends ForgotPassState>
    implements $ForgotPassStateCopyWith<$Res> {
  _$ForgotPassStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      apiStatus: freezed == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotPassStateImplCopyWith<$Res>
    implements $ForgotPassStateCopyWith<$Res> {
  factory _$$ForgotPassStateImplCopyWith(_$ForgotPassStateImpl value,
          $Res Function(_$ForgotPassStateImpl) then) =
      __$$ForgotPassStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiStatus? apiStatus, String? email});
}

/// @nodoc
class __$$ForgotPassStateImplCopyWithImpl<$Res>
    extends _$ForgotPassStateCopyWithImpl<$Res, _$ForgotPassStateImpl>
    implements _$$ForgotPassStateImplCopyWith<$Res> {
  __$$ForgotPassStateImplCopyWithImpl(
      _$ForgotPassStateImpl _value, $Res Function(_$ForgotPassStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = freezed,
    Object? email = freezed,
  }) {
    return _then(_$ForgotPassStateImpl(
      apiStatus: freezed == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ForgotPassStateImpl extends _ForgotPassState {
  const _$ForgotPassStateImpl(
      {this.apiStatus = ApiStatus.init, this.email = null})
      : super._();

  @override
  @JsonKey()
  final ApiStatus? apiStatus;
  @override
  @JsonKey()
  final String? email;

  @override
  String toString() {
    return 'ForgotPassState(apiStatus: $apiStatus, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPassStateImpl &&
            (identical(other.apiStatus, apiStatus) ||
                other.apiStatus == apiStatus) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiStatus, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPassStateImplCopyWith<_$ForgotPassStateImpl> get copyWith =>
      __$$ForgotPassStateImplCopyWithImpl<_$ForgotPassStateImpl>(
          this, _$identity);
}

abstract class _ForgotPassState extends ForgotPassState {
  const factory _ForgotPassState(
      {final ApiStatus? apiStatus,
      final String? email}) = _$ForgotPassStateImpl;
  const _ForgotPassState._() : super._();

  @override
  ApiStatus? get apiStatus;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$ForgotPassStateImplCopyWith<_$ForgotPassStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
