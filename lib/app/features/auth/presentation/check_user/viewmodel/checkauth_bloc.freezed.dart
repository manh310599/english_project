// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkauth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CheckauthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() stated,
    required TResult Function() logged,
    required TResult Function() logOut,
    required TResult Function(String? name, int? phoneNumber) changeProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? stated,
    TResult? Function()? logged,
    TResult? Function()? logOut,
    TResult? Function(String? name, int? phoneNumber)? changeProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? stated,
    TResult Function()? logged,
    TResult Function()? logOut,
    TResult Function(String? name, int? phoneNumber)? changeProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Stated value) stated,
    required TResult Function(_Logged value) logged,
    required TResult Function(_Logout value) logOut,
    required TResult Function(_ChangeProfile value) changeProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Stated value)? stated,
    TResult? Function(_Logged value)? logged,
    TResult? Function(_Logout value)? logOut,
    TResult? Function(_ChangeProfile value)? changeProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Stated value)? stated,
    TResult Function(_Logged value)? logged,
    TResult Function(_Logout value)? logOut,
    TResult Function(_ChangeProfile value)? changeProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckauthEventCopyWith<$Res> {
  factory $CheckauthEventCopyWith(
          CheckauthEvent value, $Res Function(CheckauthEvent) then) =
      _$CheckauthEventCopyWithImpl<$Res, CheckauthEvent>;
}

/// @nodoc
class _$CheckauthEventCopyWithImpl<$Res, $Val extends CheckauthEvent>
    implements $CheckauthEventCopyWith<$Res> {
  _$CheckauthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StatedImplCopyWith<$Res> {
  factory _$$StatedImplCopyWith(
          _$StatedImpl value, $Res Function(_$StatedImpl) then) =
      __$$StatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatedImplCopyWithImpl<$Res>
    extends _$CheckauthEventCopyWithImpl<$Res, _$StatedImpl>
    implements _$$StatedImplCopyWith<$Res> {
  __$$StatedImplCopyWithImpl(
      _$StatedImpl _value, $Res Function(_$StatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StatedImpl extends _Stated {
  const _$StatedImpl() : super._();

  @override
  String toString() {
    return 'CheckauthEvent.stated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() stated,
    required TResult Function() logged,
    required TResult Function() logOut,
    required TResult Function(String? name, int? phoneNumber) changeProfile,
  }) {
    return stated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? stated,
    TResult? Function()? logged,
    TResult? Function()? logOut,
    TResult? Function(String? name, int? phoneNumber)? changeProfile,
  }) {
    return stated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? stated,
    TResult Function()? logged,
    TResult Function()? logOut,
    TResult Function(String? name, int? phoneNumber)? changeProfile,
    required TResult orElse(),
  }) {
    if (stated != null) {
      return stated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Stated value) stated,
    required TResult Function(_Logged value) logged,
    required TResult Function(_Logout value) logOut,
    required TResult Function(_ChangeProfile value) changeProfile,
  }) {
    return stated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Stated value)? stated,
    TResult? Function(_Logged value)? logged,
    TResult? Function(_Logout value)? logOut,
    TResult? Function(_ChangeProfile value)? changeProfile,
  }) {
    return stated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Stated value)? stated,
    TResult Function(_Logged value)? logged,
    TResult Function(_Logout value)? logOut,
    TResult Function(_ChangeProfile value)? changeProfile,
    required TResult orElse(),
  }) {
    if (stated != null) {
      return stated(this);
    }
    return orElse();
  }
}

abstract class _Stated extends CheckauthEvent {
  const factory _Stated() = _$StatedImpl;
  const _Stated._() : super._();
}

/// @nodoc
abstract class _$$LoggedImplCopyWith<$Res> {
  factory _$$LoggedImplCopyWith(
          _$LoggedImpl value, $Res Function(_$LoggedImpl) then) =
      __$$LoggedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedImplCopyWithImpl<$Res>
    extends _$CheckauthEventCopyWithImpl<$Res, _$LoggedImpl>
    implements _$$LoggedImplCopyWith<$Res> {
  __$$LoggedImplCopyWithImpl(
      _$LoggedImpl _value, $Res Function(_$LoggedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggedImpl extends _Logged {
  const _$LoggedImpl() : super._();

  @override
  String toString() {
    return 'CheckauthEvent.logged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() stated,
    required TResult Function() logged,
    required TResult Function() logOut,
    required TResult Function(String? name, int? phoneNumber) changeProfile,
  }) {
    return logged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? stated,
    TResult? Function()? logged,
    TResult? Function()? logOut,
    TResult? Function(String? name, int? phoneNumber)? changeProfile,
  }) {
    return logged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? stated,
    TResult Function()? logged,
    TResult Function()? logOut,
    TResult Function(String? name, int? phoneNumber)? changeProfile,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Stated value) stated,
    required TResult Function(_Logged value) logged,
    required TResult Function(_Logout value) logOut,
    required TResult Function(_ChangeProfile value) changeProfile,
  }) {
    return logged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Stated value)? stated,
    TResult? Function(_Logged value)? logged,
    TResult? Function(_Logout value)? logOut,
    TResult? Function(_ChangeProfile value)? changeProfile,
  }) {
    return logged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Stated value)? stated,
    TResult Function(_Logged value)? logged,
    TResult Function(_Logout value)? logOut,
    TResult Function(_ChangeProfile value)? changeProfile,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(this);
    }
    return orElse();
  }
}

abstract class _Logged extends CheckauthEvent {
  const factory _Logged() = _$LoggedImpl;
  const _Logged._() : super._();
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$CheckauthEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutImpl extends _Logout {
  const _$LogoutImpl() : super._();

  @override
  String toString() {
    return 'CheckauthEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() stated,
    required TResult Function() logged,
    required TResult Function() logOut,
    required TResult Function(String? name, int? phoneNumber) changeProfile,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? stated,
    TResult? Function()? logged,
    TResult? Function()? logOut,
    TResult? Function(String? name, int? phoneNumber)? changeProfile,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? stated,
    TResult Function()? logged,
    TResult Function()? logOut,
    TResult Function(String? name, int? phoneNumber)? changeProfile,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Stated value) stated,
    required TResult Function(_Logged value) logged,
    required TResult Function(_Logout value) logOut,
    required TResult Function(_ChangeProfile value) changeProfile,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Stated value)? stated,
    TResult? Function(_Logged value)? logged,
    TResult? Function(_Logout value)? logOut,
    TResult? Function(_ChangeProfile value)? changeProfile,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Stated value)? stated,
    TResult Function(_Logged value)? logged,
    TResult Function(_Logout value)? logOut,
    TResult Function(_ChangeProfile value)? changeProfile,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _Logout extends CheckauthEvent {
  const factory _Logout() = _$LogoutImpl;
  const _Logout._() : super._();
}

/// @nodoc
abstract class _$$ChangeProfileImplCopyWith<$Res> {
  factory _$$ChangeProfileImplCopyWith(
          _$ChangeProfileImpl value, $Res Function(_$ChangeProfileImpl) then) =
      __$$ChangeProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? name, int? phoneNumber});
}

/// @nodoc
class __$$ChangeProfileImplCopyWithImpl<$Res>
    extends _$CheckauthEventCopyWithImpl<$Res, _$ChangeProfileImpl>
    implements _$$ChangeProfileImplCopyWith<$Res> {
  __$$ChangeProfileImplCopyWithImpl(
      _$ChangeProfileImpl _value, $Res Function(_$ChangeProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$ChangeProfileImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ChangeProfileImpl extends _ChangeProfile {
  const _$ChangeProfileImpl({this.name, this.phoneNumber}) : super._();

  @override
  final String? name;
  @override
  final int? phoneNumber;

  @override
  String toString() {
    return 'CheckauthEvent.changeProfile(name: $name, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeProfileImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeProfileImplCopyWith<_$ChangeProfileImpl> get copyWith =>
      __$$ChangeProfileImplCopyWithImpl<_$ChangeProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() stated,
    required TResult Function() logged,
    required TResult Function() logOut,
    required TResult Function(String? name, int? phoneNumber) changeProfile,
  }) {
    return changeProfile(name, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? stated,
    TResult? Function()? logged,
    TResult? Function()? logOut,
    TResult? Function(String? name, int? phoneNumber)? changeProfile,
  }) {
    return changeProfile?.call(name, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? stated,
    TResult Function()? logged,
    TResult Function()? logOut,
    TResult Function(String? name, int? phoneNumber)? changeProfile,
    required TResult orElse(),
  }) {
    if (changeProfile != null) {
      return changeProfile(name, phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Stated value) stated,
    required TResult Function(_Logged value) logged,
    required TResult Function(_Logout value) logOut,
    required TResult Function(_ChangeProfile value) changeProfile,
  }) {
    return changeProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Stated value)? stated,
    TResult? Function(_Logged value)? logged,
    TResult? Function(_Logout value)? logOut,
    TResult? Function(_ChangeProfile value)? changeProfile,
  }) {
    return changeProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Stated value)? stated,
    TResult Function(_Logged value)? logged,
    TResult Function(_Logout value)? logOut,
    TResult Function(_ChangeProfile value)? changeProfile,
    required TResult orElse(),
  }) {
    if (changeProfile != null) {
      return changeProfile(this);
    }
    return orElse();
  }
}

abstract class _ChangeProfile extends CheckauthEvent {
  const factory _ChangeProfile({final String? name, final int? phoneNumber}) =
      _$ChangeProfileImpl;
  const _ChangeProfile._() : super._();

  String? get name;
  int? get phoneNumber;
  @JsonKey(ignore: true)
  _$$ChangeProfileImplCopyWith<_$ChangeProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CheckauthState {
  CheckAuth? get checkAuth => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  UserData? get idUser => throw _privateConstructorUsedError;
  BannerAd? get bannerAd => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckauthStateCopyWith<CheckauthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckauthStateCopyWith<$Res> {
  factory $CheckauthStateCopyWith(
          CheckauthState value, $Res Function(CheckauthState) then) =
      _$CheckauthStateCopyWithImpl<$Res, CheckauthState>;
  @useResult
  $Res call(
      {CheckAuth? checkAuth, User? user, UserData? idUser, BannerAd? bannerAd});

  $UserDataCopyWith<$Res>? get idUser;
}

/// @nodoc
class _$CheckauthStateCopyWithImpl<$Res, $Val extends CheckauthState>
    implements $CheckauthStateCopyWith<$Res> {
  _$CheckauthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkAuth = freezed,
    Object? user = freezed,
    Object? idUser = freezed,
    Object? bannerAd = freezed,
  }) {
    return _then(_value.copyWith(
      checkAuth: freezed == checkAuth
          ? _value.checkAuth
          : checkAuth // ignore: cast_nullable_to_non_nullable
              as CheckAuth?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as UserData?,
      bannerAd: freezed == bannerAd
          ? _value.bannerAd
          : bannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res>? get idUser {
    if (_value.idUser == null) {
      return null;
    }

    return $UserDataCopyWith<$Res>(_value.idUser!, (value) {
      return _then(_value.copyWith(idUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckauthStateImplCopyWith<$Res>
    implements $CheckauthStateCopyWith<$Res> {
  factory _$$CheckauthStateImplCopyWith(_$CheckauthStateImpl value,
          $Res Function(_$CheckauthStateImpl) then) =
      __$$CheckauthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CheckAuth? checkAuth, User? user, UserData? idUser, BannerAd? bannerAd});

  @override
  $UserDataCopyWith<$Res>? get idUser;
}

/// @nodoc
class __$$CheckauthStateImplCopyWithImpl<$Res>
    extends _$CheckauthStateCopyWithImpl<$Res, _$CheckauthStateImpl>
    implements _$$CheckauthStateImplCopyWith<$Res> {
  __$$CheckauthStateImplCopyWithImpl(
      _$CheckauthStateImpl _value, $Res Function(_$CheckauthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkAuth = freezed,
    Object? user = freezed,
    Object? idUser = freezed,
    Object? bannerAd = freezed,
  }) {
    return _then(_$CheckauthStateImpl(
      checkAuth: freezed == checkAuth
          ? _value.checkAuth
          : checkAuth // ignore: cast_nullable_to_non_nullable
              as CheckAuth?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as UserData?,
      bannerAd: freezed == bannerAd
          ? _value.bannerAd
          : bannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd?,
    ));
  }
}

/// @nodoc

class _$CheckauthStateImpl extends _CheckauthState {
  const _$CheckauthStateImpl(
      {this.checkAuth = null,
      this.user = null,
      this.idUser = null,
      this.bannerAd = null})
      : super._();

  @override
  @JsonKey()
  final CheckAuth? checkAuth;
  @override
  @JsonKey()
  final User? user;
  @override
  @JsonKey()
  final UserData? idUser;
  @override
  @JsonKey()
  final BannerAd? bannerAd;

  @override
  String toString() {
    return 'CheckauthState(checkAuth: $checkAuth, user: $user, idUser: $idUser, bannerAd: $bannerAd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckauthStateImpl &&
            (identical(other.checkAuth, checkAuth) ||
                other.checkAuth == checkAuth) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.bannerAd, bannerAd) ||
                other.bannerAd == bannerAd));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, checkAuth, user, idUser, bannerAd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckauthStateImplCopyWith<_$CheckauthStateImpl> get copyWith =>
      __$$CheckauthStateImplCopyWithImpl<_$CheckauthStateImpl>(
          this, _$identity);
}

abstract class _CheckauthState extends CheckauthState {
  const factory _CheckauthState(
      {final CheckAuth? checkAuth,
      final User? user,
      final UserData? idUser,
      final BannerAd? bannerAd}) = _$CheckauthStateImpl;
  const _CheckauthState._() : super._();

  @override
  CheckAuth? get checkAuth;
  @override
  User? get user;
  @override
  UserData? get idUser;
  @override
  BannerAd? get bannerAd;
  @override
  @JsonKey(ignore: true)
  _$$CheckauthStateImplCopyWith<_$CheckauthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
