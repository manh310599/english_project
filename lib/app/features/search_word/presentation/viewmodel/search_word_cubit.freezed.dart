// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_word_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchWordState {
  ApiStatus? get apiStatus => throw _privateConstructorUsedError;
  Translate? get translate => throw _privateConstructorUsedError;
  List<StorageWord?>? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchWordStateCopyWith<SearchWordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchWordStateCopyWith<$Res> {
  factory $SearchWordStateCopyWith(
          SearchWordState value, $Res Function(SearchWordState) then) =
      _$SearchWordStateCopyWithImpl<$Res, SearchWordState>;
  @useResult
  $Res call(
      {ApiStatus? apiStatus, Translate? translate, List<StorageWord?>? data});

  $TranslateCopyWith<$Res>? get translate;
}

/// @nodoc
class _$SearchWordStateCopyWithImpl<$Res, $Val extends SearchWordState>
    implements $SearchWordStateCopyWith<$Res> {
  _$SearchWordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = freezed,
    Object? translate = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      apiStatus: freezed == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus?,
      translate: freezed == translate
          ? _value.translate
          : translate // ignore: cast_nullable_to_non_nullable
              as Translate?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StorageWord?>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TranslateCopyWith<$Res>? get translate {
    if (_value.translate == null) {
      return null;
    }

    return $TranslateCopyWith<$Res>(_value.translate!, (value) {
      return _then(_value.copyWith(translate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchWordStateImplCopyWith<$Res>
    implements $SearchWordStateCopyWith<$Res> {
  factory _$$SearchWordStateImplCopyWith(_$SearchWordStateImpl value,
          $Res Function(_$SearchWordStateImpl) then) =
      __$$SearchWordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiStatus? apiStatus, Translate? translate, List<StorageWord?>? data});

  @override
  $TranslateCopyWith<$Res>? get translate;
}

/// @nodoc
class __$$SearchWordStateImplCopyWithImpl<$Res>
    extends _$SearchWordStateCopyWithImpl<$Res, _$SearchWordStateImpl>
    implements _$$SearchWordStateImplCopyWith<$Res> {
  __$$SearchWordStateImplCopyWithImpl(
      _$SearchWordStateImpl _value, $Res Function(_$SearchWordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = freezed,
    Object? translate = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SearchWordStateImpl(
      apiStatus: freezed == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus?,
      translate: freezed == translate
          ? _value.translate
          : translate // ignore: cast_nullable_to_non_nullable
              as Translate?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StorageWord?>?,
    ));
  }
}

/// @nodoc

class _$SearchWordStateImpl extends _SearchWordState {
  const _$SearchWordStateImpl(
      {this.apiStatus = null,
      this.translate = null,
      final List<StorageWord?>? data = null})
      : _data = data,
        super._();

  @override
  @JsonKey()
  final ApiStatus? apiStatus;
  @override
  @JsonKey()
  final Translate? translate;
  final List<StorageWord?>? _data;
  @override
  @JsonKey()
  List<StorageWord?>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchWordState(apiStatus: $apiStatus, translate: $translate, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchWordStateImpl &&
            (identical(other.apiStatus, apiStatus) ||
                other.apiStatus == apiStatus) &&
            (identical(other.translate, translate) ||
                other.translate == translate) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiStatus, translate,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchWordStateImplCopyWith<_$SearchWordStateImpl> get copyWith =>
      __$$SearchWordStateImplCopyWithImpl<_$SearchWordStateImpl>(
          this, _$identity);
}

abstract class _SearchWordState extends SearchWordState {
  const factory _SearchWordState(
      {final ApiStatus? apiStatus,
      final Translate? translate,
      final List<StorageWord?>? data}) = _$SearchWordStateImpl;
  const _SearchWordState._() : super._();

  @override
  ApiStatus? get apiStatus;
  @override
  Translate? get translate;
  @override
  List<StorageWord?>? get data;
  @override
  @JsonKey(ignore: true)
  _$$SearchWordStateImplCopyWith<_$SearchWordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
