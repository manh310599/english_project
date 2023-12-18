// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learn_vocabulary_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LearnVocabularyState {
  List<StorageWord?>? get data => throw _privateConstructorUsedError;
  List<Words?>? get words => throw _privateConstructorUsedError;
  bool? get addOrCourse => throw _privateConstructorUsedError;
  ApiStatus? get apiStatus => throw _privateConstructorUsedError;
  BannerAd? get bannerAd => throw _privateConstructorUsedError;
  bool? get tutorial => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LearnVocabularyStateCopyWith<LearnVocabularyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearnVocabularyStateCopyWith<$Res> {
  factory $LearnVocabularyStateCopyWith(LearnVocabularyState value,
          $Res Function(LearnVocabularyState) then) =
      _$LearnVocabularyStateCopyWithImpl<$Res, LearnVocabularyState>;
  @useResult
  $Res call(
      {List<StorageWord?>? data,
      List<Words?>? words,
      bool? addOrCourse,
      ApiStatus? apiStatus,
      BannerAd? bannerAd,
      bool? tutorial});
}

/// @nodoc
class _$LearnVocabularyStateCopyWithImpl<$Res,
        $Val extends LearnVocabularyState>
    implements $LearnVocabularyStateCopyWith<$Res> {
  _$LearnVocabularyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? words = freezed,
    Object? addOrCourse = freezed,
    Object? apiStatus = freezed,
    Object? bannerAd = freezed,
    Object? tutorial = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StorageWord?>?,
      words: freezed == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<Words?>?,
      addOrCourse: freezed == addOrCourse
          ? _value.addOrCourse
          : addOrCourse // ignore: cast_nullable_to_non_nullable
              as bool?,
      apiStatus: freezed == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus?,
      bannerAd: freezed == bannerAd
          ? _value.bannerAd
          : bannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd?,
      tutorial: freezed == tutorial
          ? _value.tutorial
          : tutorial // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LearnVocabularyStateImplCopyWith<$Res>
    implements $LearnVocabularyStateCopyWith<$Res> {
  factory _$$LearnVocabularyStateImplCopyWith(_$LearnVocabularyStateImpl value,
          $Res Function(_$LearnVocabularyStateImpl) then) =
      __$$LearnVocabularyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<StorageWord?>? data,
      List<Words?>? words,
      bool? addOrCourse,
      ApiStatus? apiStatus,
      BannerAd? bannerAd,
      bool? tutorial});
}

/// @nodoc
class __$$LearnVocabularyStateImplCopyWithImpl<$Res>
    extends _$LearnVocabularyStateCopyWithImpl<$Res, _$LearnVocabularyStateImpl>
    implements _$$LearnVocabularyStateImplCopyWith<$Res> {
  __$$LearnVocabularyStateImplCopyWithImpl(_$LearnVocabularyStateImpl _value,
      $Res Function(_$LearnVocabularyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? words = freezed,
    Object? addOrCourse = freezed,
    Object? apiStatus = freezed,
    Object? bannerAd = freezed,
    Object? tutorial = freezed,
  }) {
    return _then(_$LearnVocabularyStateImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StorageWord?>?,
      words: freezed == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<Words?>?,
      addOrCourse: freezed == addOrCourse
          ? _value.addOrCourse
          : addOrCourse // ignore: cast_nullable_to_non_nullable
              as bool?,
      apiStatus: freezed == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus?,
      bannerAd: freezed == bannerAd
          ? _value.bannerAd
          : bannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd?,
      tutorial: freezed == tutorial
          ? _value.tutorial
          : tutorial // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$LearnVocabularyStateImpl extends _LearnVocabularyState {
  const _$LearnVocabularyStateImpl(
      {final List<StorageWord?>? data = null,
      final List<Words?>? words = null,
      this.addOrCourse = null,
      this.apiStatus = ApiStatus.init,
      this.bannerAd = null,
      this.tutorial = true})
      : _data = data,
        _words = words,
        super._();

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

  final List<Words?>? _words;
  @override
  @JsonKey()
  List<Words?>? get words {
    final value = _words;
    if (value == null) return null;
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool? addOrCourse;
  @override
  @JsonKey()
  final ApiStatus? apiStatus;
  @override
  @JsonKey()
  final BannerAd? bannerAd;
  @override
  @JsonKey()
  final bool? tutorial;

  @override
  String toString() {
    return 'LearnVocabularyState(data: $data, words: $words, addOrCourse: $addOrCourse, apiStatus: $apiStatus, bannerAd: $bannerAd, tutorial: $tutorial)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearnVocabularyStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._words, _words) &&
            (identical(other.addOrCourse, addOrCourse) ||
                other.addOrCourse == addOrCourse) &&
            (identical(other.apiStatus, apiStatus) ||
                other.apiStatus == apiStatus) &&
            (identical(other.bannerAd, bannerAd) ||
                other.bannerAd == bannerAd) &&
            (identical(other.tutorial, tutorial) ||
                other.tutorial == tutorial));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_words),
      addOrCourse,
      apiStatus,
      bannerAd,
      tutorial);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearnVocabularyStateImplCopyWith<_$LearnVocabularyStateImpl>
      get copyWith =>
          __$$LearnVocabularyStateImplCopyWithImpl<_$LearnVocabularyStateImpl>(
              this, _$identity);
}

abstract class _LearnVocabularyState extends LearnVocabularyState {
  const factory _LearnVocabularyState(
      {final List<StorageWord?>? data,
      final List<Words?>? words,
      final bool? addOrCourse,
      final ApiStatus? apiStatus,
      final BannerAd? bannerAd,
      final bool? tutorial}) = _$LearnVocabularyStateImpl;
  const _LearnVocabularyState._() : super._();

  @override
  List<StorageWord?>? get data;
  @override
  List<Words?>? get words;
  @override
  bool? get addOrCourse;
  @override
  ApiStatus? get apiStatus;
  @override
  BannerAd? get bannerAd;
  @override
  bool? get tutorial;
  @override
  @JsonKey(ignore: true)
  _$$LearnVocabularyStateImplCopyWith<_$LearnVocabularyStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
