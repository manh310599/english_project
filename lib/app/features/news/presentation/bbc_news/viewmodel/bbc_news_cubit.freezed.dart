// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bbc_news_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BbcNewsState {
  BBCNewModel? get bbcNewModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BbcNewsStateCopyWith<BbcNewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BbcNewsStateCopyWith<$Res> {
  factory $BbcNewsStateCopyWith(
          BbcNewsState value, $Res Function(BbcNewsState) then) =
      _$BbcNewsStateCopyWithImpl<$Res, BbcNewsState>;
  @useResult
  $Res call({BBCNewModel? bbcNewModel});

  $BBCNewModelCopyWith<$Res>? get bbcNewModel;
}

/// @nodoc
class _$BbcNewsStateCopyWithImpl<$Res, $Val extends BbcNewsState>
    implements $BbcNewsStateCopyWith<$Res> {
  _$BbcNewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bbcNewModel = freezed,
  }) {
    return _then(_value.copyWith(
      bbcNewModel: freezed == bbcNewModel
          ? _value.bbcNewModel
          : bbcNewModel // ignore: cast_nullable_to_non_nullable
              as BBCNewModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BBCNewModelCopyWith<$Res>? get bbcNewModel {
    if (_value.bbcNewModel == null) {
      return null;
    }

    return $BBCNewModelCopyWith<$Res>(_value.bbcNewModel!, (value) {
      return _then(_value.copyWith(bbcNewModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BbcNewsStateImplCopyWith<$Res>
    implements $BbcNewsStateCopyWith<$Res> {
  factory _$$BbcNewsStateImplCopyWith(
          _$BbcNewsStateImpl value, $Res Function(_$BbcNewsStateImpl) then) =
      __$$BbcNewsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BBCNewModel? bbcNewModel});

  @override
  $BBCNewModelCopyWith<$Res>? get bbcNewModel;
}

/// @nodoc
class __$$BbcNewsStateImplCopyWithImpl<$Res>
    extends _$BbcNewsStateCopyWithImpl<$Res, _$BbcNewsStateImpl>
    implements _$$BbcNewsStateImplCopyWith<$Res> {
  __$$BbcNewsStateImplCopyWithImpl(
      _$BbcNewsStateImpl _value, $Res Function(_$BbcNewsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bbcNewModel = freezed,
  }) {
    return _then(_$BbcNewsStateImpl(
      bbcNewModel: freezed == bbcNewModel
          ? _value.bbcNewModel
          : bbcNewModel // ignore: cast_nullable_to_non_nullable
              as BBCNewModel?,
    ));
  }
}

/// @nodoc

class _$BbcNewsStateImpl extends _BbcNewsState {
  const _$BbcNewsStateImpl({this.bbcNewModel = null}) : super._();

  @override
  @JsonKey()
  final BBCNewModel? bbcNewModel;

  @override
  String toString() {
    return 'BbcNewsState(bbcNewModel: $bbcNewModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BbcNewsStateImpl &&
            (identical(other.bbcNewModel, bbcNewModel) ||
                other.bbcNewModel == bbcNewModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bbcNewModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BbcNewsStateImplCopyWith<_$BbcNewsStateImpl> get copyWith =>
      __$$BbcNewsStateImplCopyWithImpl<_$BbcNewsStateImpl>(this, _$identity);
}

abstract class _BbcNewsState extends BbcNewsState {
  const factory _BbcNewsState({final BBCNewModel? bbcNewModel}) =
      _$BbcNewsStateImpl;
  const _BbcNewsState._() : super._();

  @override
  BBCNewModel? get bbcNewModel;
  @override
  @JsonKey(ignore: true)
  _$$BbcNewsStateImplCopyWith<_$BbcNewsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
