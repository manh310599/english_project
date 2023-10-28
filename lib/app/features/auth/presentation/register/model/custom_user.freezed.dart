// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomUser _$CustomUserFromJson(Map<String, dynamic> json) {
  return _CustomUser.fromJson(json);
}

/// @nodoc
mixin _$CustomUser {
  String? get name => throw _privateConstructorUsedError;
  String? get sex => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  int? get statusAccount => throw _privateConstructorUsedError;
  int? get streak => throw _privateConstructorUsedError;
  String? get passWord => throw _privateConstructorUsedError;
  String? get repass => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomUserCopyWith<CustomUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomUserCopyWith<$Res> {
  factory $CustomUserCopyWith(
          CustomUser value, $Res Function(CustomUser) then) =
      _$CustomUserCopyWithImpl<$Res, CustomUser>;
  @useResult
  $Res call(
      {String? name,
      String? sex,
      int? age,
      String? email,
      int? statusAccount,
      int? streak,
      String? passWord,
      String? repass});
}

/// @nodoc
class _$CustomUserCopyWithImpl<$Res, $Val extends CustomUser>
    implements $CustomUserCopyWith<$Res> {
  _$CustomUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? sex = freezed,
    Object? age = freezed,
    Object? email = freezed,
    Object? statusAccount = freezed,
    Object? streak = freezed,
    Object? passWord = freezed,
    Object? repass = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: freezed == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      statusAccount: freezed == statusAccount
          ? _value.statusAccount
          : statusAccount // ignore: cast_nullable_to_non_nullable
              as int?,
      streak: freezed == streak
          ? _value.streak
          : streak // ignore: cast_nullable_to_non_nullable
              as int?,
      passWord: freezed == passWord
          ? _value.passWord
          : passWord // ignore: cast_nullable_to_non_nullable
              as String?,
      repass: freezed == repass
          ? _value.repass
          : repass // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomUserImplCopyWith<$Res>
    implements $CustomUserCopyWith<$Res> {
  factory _$$CustomUserImplCopyWith(
          _$CustomUserImpl value, $Res Function(_$CustomUserImpl) then) =
      __$$CustomUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? sex,
      int? age,
      String? email,
      int? statusAccount,
      int? streak,
      String? passWord,
      String? repass});
}

/// @nodoc
class __$$CustomUserImplCopyWithImpl<$Res>
    extends _$CustomUserCopyWithImpl<$Res, _$CustomUserImpl>
    implements _$$CustomUserImplCopyWith<$Res> {
  __$$CustomUserImplCopyWithImpl(
      _$CustomUserImpl _value, $Res Function(_$CustomUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? sex = freezed,
    Object? age = freezed,
    Object? email = freezed,
    Object? statusAccount = freezed,
    Object? streak = freezed,
    Object? passWord = freezed,
    Object? repass = freezed,
  }) {
    return _then(_$CustomUserImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: freezed == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      statusAccount: freezed == statusAccount
          ? _value.statusAccount
          : statusAccount // ignore: cast_nullable_to_non_nullable
              as int?,
      streak: freezed == streak
          ? _value.streak
          : streak // ignore: cast_nullable_to_non_nullable
              as int?,
      passWord: freezed == passWord
          ? _value.passWord
          : passWord // ignore: cast_nullable_to_non_nullable
              as String?,
      repass: freezed == repass
          ? _value.repass
          : repass // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomUserImpl implements _CustomUser {
  const _$CustomUserImpl(
      {this.name,
      this.sex,
      this.age,
      this.email,
      this.statusAccount,
      this.streak,
      this.passWord,
      this.repass});

  factory _$CustomUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomUserImplFromJson(json);

  @override
  final String? name;
  @override
  final String? sex;
  @override
  final int? age;
  @override
  final String? email;
  @override
  final int? statusAccount;
  @override
  final int? streak;
  @override
  final String? passWord;
  @override
  final String? repass;

  @override
  String toString() {
    return 'CustomUser(name: $name, sex: $sex, age: $age, email: $email, statusAccount: $statusAccount, streak: $streak, passWord: $passWord, repass: $repass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomUserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.statusAccount, statusAccount) ||
                other.statusAccount == statusAccount) &&
            (identical(other.streak, streak) || other.streak == streak) &&
            (identical(other.passWord, passWord) ||
                other.passWord == passWord) &&
            (identical(other.repass, repass) || other.repass == repass));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, sex, age, email,
      statusAccount, streak, passWord, repass);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomUserImplCopyWith<_$CustomUserImpl> get copyWith =>
      __$$CustomUserImplCopyWithImpl<_$CustomUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomUserImplToJson(
      this,
    );
  }
}

abstract class _CustomUser implements CustomUser {
  const factory _CustomUser(
      {final String? name,
      final String? sex,
      final int? age,
      final String? email,
      final int? statusAccount,
      final int? streak,
      final String? passWord,
      final String? repass}) = _$CustomUserImpl;

  factory _CustomUser.fromJson(Map<String, dynamic> json) =
      _$CustomUserImpl.fromJson;

  @override
  String? get name;
  @override
  String? get sex;
  @override
  int? get age;
  @override
  String? get email;
  @override
  int? get statusAccount;
  @override
  int? get streak;
  @override
  String? get passWord;
  @override
  String? get repass;
  @override
  @JsonKey(ignore: true)
  _$$CustomUserImplCopyWith<_$CustomUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
