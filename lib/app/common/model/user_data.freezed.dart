// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  int? get userID => throw _privateConstructorUsedError;
  int? get finalDayPremium => throw _privateConstructorUsedError;
  int? get gift => throw _privateConstructorUsedError;
  String? get tokent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call({int? userID, int? finalDayPremium, int? gift, String? tokent});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = freezed,
    Object? finalDayPremium = freezed,
    Object? gift = freezed,
    Object? tokent = freezed,
  }) {
    return _then(_value.copyWith(
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int?,
      finalDayPremium: freezed == finalDayPremium
          ? _value.finalDayPremium
          : finalDayPremium // ignore: cast_nullable_to_non_nullable
              as int?,
      gift: freezed == gift
          ? _value.gift
          : gift // ignore: cast_nullable_to_non_nullable
              as int?,
      tokent: freezed == tokent
          ? _value.tokent
          : tokent // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
          _$UserDataImpl value, $Res Function(_$UserDataImpl) then) =
      __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? userID, int? finalDayPremium, int? gift, String? tokent});
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
      _$UserDataImpl _value, $Res Function(_$UserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = freezed,
    Object? finalDayPremium = freezed,
    Object? gift = freezed,
    Object? tokent = freezed,
  }) {
    return _then(_$UserDataImpl(
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int?,
      finalDayPremium: freezed == finalDayPremium
          ? _value.finalDayPremium
          : finalDayPremium // ignore: cast_nullable_to_non_nullable
              as int?,
      gift: freezed == gift
          ? _value.gift
          : gift // ignore: cast_nullable_to_non_nullable
              as int?,
      tokent: freezed == tokent
          ? _value.tokent
          : tokent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataImpl with DiagnosticableTreeMixin implements _UserData {
  const _$UserDataImpl(
      {this.userID, this.finalDayPremium, this.gift, this.tokent});

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataImplFromJson(json);

  @override
  final int? userID;
  @override
  final int? finalDayPremium;
  @override
  final int? gift;
  @override
  final String? tokent;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserData(userID: $userID, finalDayPremium: $finalDayPremium, gift: $gift, tokent: $tokent)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserData'))
      ..add(DiagnosticsProperty('userID', userID))
      ..add(DiagnosticsProperty('finalDayPremium', finalDayPremium))
      ..add(DiagnosticsProperty('gift', gift))
      ..add(DiagnosticsProperty('tokent', tokent));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.finalDayPremium, finalDayPremium) ||
                other.finalDayPremium == finalDayPremium) &&
            (identical(other.gift, gift) || other.gift == gift) &&
            (identical(other.tokent, tokent) || other.tokent == tokent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userID, finalDayPremium, gift, tokent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataImplToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {final int? userID,
      final int? finalDayPremium,
      final int? gift,
      final String? tokent}) = _$UserDataImpl;

  factory _UserData.fromJson(Map<String, dynamic> json) =
      _$UserDataImpl.fromJson;

  @override
  int? get userID;
  @override
  int? get finalDayPremium;
  @override
  int? get gift;
  @override
  String? get tokent;
  @override
  @JsonKey(ignore: true)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
