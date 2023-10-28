// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterState {
  ApiStatus? get apiStatus => throw _privateConstructorUsedError;
  CustomUser? get customUser => throw _privateConstructorUsedError;
  RegisterStatus? get registerStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {ApiStatus? apiStatus,
      CustomUser? customUser,
      RegisterStatus? registerStatus});

  $CustomUserCopyWith<$Res>? get customUser;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = freezed,
    Object? customUser = freezed,
    Object? registerStatus = freezed,
  }) {
    return _then(_value.copyWith(
      apiStatus: freezed == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus?,
      customUser: freezed == customUser
          ? _value.customUser
          : customUser // ignore: cast_nullable_to_non_nullable
              as CustomUser?,
      registerStatus: freezed == registerStatus
          ? _value.registerStatus
          : registerStatus // ignore: cast_nullable_to_non_nullable
              as RegisterStatus?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomUserCopyWith<$Res>? get customUser {
    if (_value.customUser == null) {
      return null;
    }

    return $CustomUserCopyWith<$Res>(_value.customUser!, (value) {
      return _then(_value.copyWith(customUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterStateImplCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$RegisterStateImplCopyWith(
          _$RegisterStateImpl value, $Res Function(_$RegisterStateImpl) then) =
      __$$RegisterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiStatus? apiStatus,
      CustomUser? customUser,
      RegisterStatus? registerStatus});

  @override
  $CustomUserCopyWith<$Res>? get customUser;
}

/// @nodoc
class __$$RegisterStateImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterStateImpl>
    implements _$$RegisterStateImplCopyWith<$Res> {
  __$$RegisterStateImplCopyWithImpl(
      _$RegisterStateImpl _value, $Res Function(_$RegisterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = freezed,
    Object? customUser = freezed,
    Object? registerStatus = freezed,
  }) {
    return _then(_$RegisterStateImpl(
      apiStatus: freezed == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus?,
      customUser: freezed == customUser
          ? _value.customUser
          : customUser // ignore: cast_nullable_to_non_nullable
              as CustomUser?,
      registerStatus: freezed == registerStatus
          ? _value.registerStatus
          : registerStatus // ignore: cast_nullable_to_non_nullable
              as RegisterStatus?,
    ));
  }
}

/// @nodoc

class _$RegisterStateImpl extends _RegisterState {
  const _$RegisterStateImpl(
      {this.apiStatus = ApiStatus.init,
      this.customUser = null,
      this.registerStatus = null})
      : super._();

  @override
  @JsonKey()
  final ApiStatus? apiStatus;
  @override
  @JsonKey()
  final CustomUser? customUser;
  @override
  @JsonKey()
  final RegisterStatus? registerStatus;

  @override
  String toString() {
    return 'RegisterState(apiStatus: $apiStatus, customUser: $customUser, registerStatus: $registerStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStateImpl &&
            (identical(other.apiStatus, apiStatus) ||
                other.apiStatus == apiStatus) &&
            (identical(other.customUser, customUser) ||
                other.customUser == customUser) &&
            (identical(other.registerStatus, registerStatus) ||
                other.registerStatus == registerStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, apiStatus, customUser, registerStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      __$$RegisterStateImplCopyWithImpl<_$RegisterStateImpl>(this, _$identity);
}

abstract class _RegisterState extends RegisterState {
  const factory _RegisterState(
      {final ApiStatus? apiStatus,
      final CustomUser? customUser,
      final RegisterStatus? registerStatus}) = _$RegisterStateImpl;
  const _RegisterState._() : super._();

  @override
  ApiStatus? get apiStatus;
  @override
  CustomUser? get customUser;
  @override
  RegisterStatus? get registerStatus;
  @override
  @JsonKey(ignore: true)
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
