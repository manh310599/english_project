// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'information_card_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InformationCardState {
  ApiStatus? get apiStatus => throw _privateConstructorUsedError;
  String? get meaning => throw _privateConstructorUsedError;
  ImageFromText? get imageFromText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InformationCardStateCopyWith<InformationCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InformationCardStateCopyWith<$Res> {
  factory $InformationCardStateCopyWith(InformationCardState value,
          $Res Function(InformationCardState) then) =
      _$InformationCardStateCopyWithImpl<$Res, InformationCardState>;
  @useResult
  $Res call(
      {ApiStatus? apiStatus, String? meaning, ImageFromText? imageFromText});

  $ImageFromTextCopyWith<$Res>? get imageFromText;
}

/// @nodoc
class _$InformationCardStateCopyWithImpl<$Res,
        $Val extends InformationCardState>
    implements $InformationCardStateCopyWith<$Res> {
  _$InformationCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = freezed,
    Object? meaning = freezed,
    Object? imageFromText = freezed,
  }) {
    return _then(_value.copyWith(
      apiStatus: freezed == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus?,
      meaning: freezed == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String?,
      imageFromText: freezed == imageFromText
          ? _value.imageFromText
          : imageFromText // ignore: cast_nullable_to_non_nullable
              as ImageFromText?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageFromTextCopyWith<$Res>? get imageFromText {
    if (_value.imageFromText == null) {
      return null;
    }

    return $ImageFromTextCopyWith<$Res>(_value.imageFromText!, (value) {
      return _then(_value.copyWith(imageFromText: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InformationCardStateImplCopyWith<$Res>
    implements $InformationCardStateCopyWith<$Res> {
  factory _$$InformationCardStateImplCopyWith(_$InformationCardStateImpl value,
          $Res Function(_$InformationCardStateImpl) then) =
      __$$InformationCardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiStatus? apiStatus, String? meaning, ImageFromText? imageFromText});

  @override
  $ImageFromTextCopyWith<$Res>? get imageFromText;
}

/// @nodoc
class __$$InformationCardStateImplCopyWithImpl<$Res>
    extends _$InformationCardStateCopyWithImpl<$Res, _$InformationCardStateImpl>
    implements _$$InformationCardStateImplCopyWith<$Res> {
  __$$InformationCardStateImplCopyWithImpl(_$InformationCardStateImpl _value,
      $Res Function(_$InformationCardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = freezed,
    Object? meaning = freezed,
    Object? imageFromText = freezed,
  }) {
    return _then(_$InformationCardStateImpl(
      apiStatus: freezed == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus?,
      meaning: freezed == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String?,
      imageFromText: freezed == imageFromText
          ? _value.imageFromText
          : imageFromText // ignore: cast_nullable_to_non_nullable
              as ImageFromText?,
    ));
  }
}

/// @nodoc

class _$InformationCardStateImpl extends _InformationCardState {
  const _$InformationCardStateImpl(
      {this.apiStatus = ApiStatus.init,
      this.meaning = null,
      this.imageFromText = null})
      : super._();

  @override
  @JsonKey()
  final ApiStatus? apiStatus;
  @override
  @JsonKey()
  final String? meaning;
  @override
  @JsonKey()
  final ImageFromText? imageFromText;

  @override
  String toString() {
    return 'InformationCardState(apiStatus: $apiStatus, meaning: $meaning, imageFromText: $imageFromText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InformationCardStateImpl &&
            (identical(other.apiStatus, apiStatus) ||
                other.apiStatus == apiStatus) &&
            (identical(other.meaning, meaning) || other.meaning == meaning) &&
            (identical(other.imageFromText, imageFromText) ||
                other.imageFromText == imageFromText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, apiStatus, meaning, imageFromText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InformationCardStateImplCopyWith<_$InformationCardStateImpl>
      get copyWith =>
          __$$InformationCardStateImplCopyWithImpl<_$InformationCardStateImpl>(
              this, _$identity);
}

abstract class _InformationCardState extends InformationCardState {
  const factory _InformationCardState(
      {final ApiStatus? apiStatus,
      final String? meaning,
      final ImageFromText? imageFromText}) = _$InformationCardStateImpl;
  const _InformationCardState._() : super._();

  @override
  ApiStatus? get apiStatus;
  @override
  String? get meaning;
  @override
  ImageFromText? get imageFromText;
  @override
  @JsonKey(ignore: true)
  _$$InformationCardStateImplCopyWith<_$InformationCardStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
