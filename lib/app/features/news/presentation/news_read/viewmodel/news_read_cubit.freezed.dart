// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_read_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsReadState {
  ContentBlocker? get contentBlocker => throw _privateConstructorUsedError;
  String? get word => throw _privateConstructorUsedError;
  bool? get loading => throw _privateConstructorUsedError;
  BannerAd? get bannerAd => throw _privateConstructorUsedError;
  bool? get flag => throw _privateConstructorUsedError;
  bool? get visible => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsReadStateCopyWith<NewsReadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsReadStateCopyWith<$Res> {
  factory $NewsReadStateCopyWith(
          NewsReadState value, $Res Function(NewsReadState) then) =
      _$NewsReadStateCopyWithImpl<$Res, NewsReadState>;
  @useResult
  $Res call(
      {ContentBlocker? contentBlocker,
      String? word,
      bool? loading,
      BannerAd? bannerAd,
      bool? flag,
      bool? visible});
}

/// @nodoc
class _$NewsReadStateCopyWithImpl<$Res, $Val extends NewsReadState>
    implements $NewsReadStateCopyWith<$Res> {
  _$NewsReadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentBlocker = freezed,
    Object? word = freezed,
    Object? loading = freezed,
    Object? bannerAd = freezed,
    Object? flag = freezed,
    Object? visible = freezed,
  }) {
    return _then(_value.copyWith(
      contentBlocker: freezed == contentBlocker
          ? _value.contentBlocker
          : contentBlocker // ignore: cast_nullable_to_non_nullable
              as ContentBlocker?,
      word: freezed == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String?,
      loading: freezed == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool?,
      bannerAd: freezed == bannerAd
          ? _value.bannerAd
          : bannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd?,
      flag: freezed == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as bool?,
      visible: freezed == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsReadStateImplCopyWith<$Res>
    implements $NewsReadStateCopyWith<$Res> {
  factory _$$NewsReadStateImplCopyWith(
          _$NewsReadStateImpl value, $Res Function(_$NewsReadStateImpl) then) =
      __$$NewsReadStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ContentBlocker? contentBlocker,
      String? word,
      bool? loading,
      BannerAd? bannerAd,
      bool? flag,
      bool? visible});
}

/// @nodoc
class __$$NewsReadStateImplCopyWithImpl<$Res>
    extends _$NewsReadStateCopyWithImpl<$Res, _$NewsReadStateImpl>
    implements _$$NewsReadStateImplCopyWith<$Res> {
  __$$NewsReadStateImplCopyWithImpl(
      _$NewsReadStateImpl _value, $Res Function(_$NewsReadStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentBlocker = freezed,
    Object? word = freezed,
    Object? loading = freezed,
    Object? bannerAd = freezed,
    Object? flag = freezed,
    Object? visible = freezed,
  }) {
    return _then(_$NewsReadStateImpl(
      contentBlocker: freezed == contentBlocker
          ? _value.contentBlocker
          : contentBlocker // ignore: cast_nullable_to_non_nullable
              as ContentBlocker?,
      word: freezed == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String?,
      loading: freezed == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool?,
      bannerAd: freezed == bannerAd
          ? _value.bannerAd
          : bannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd?,
      flag: freezed == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as bool?,
      visible: freezed == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$NewsReadStateImpl extends _NewsReadState {
  const _$NewsReadStateImpl(
      {this.contentBlocker = null,
      this.word = null,
      this.loading = false,
      this.bannerAd = null,
      this.flag = false,
      this.visible = true})
      : super._();

  @override
  @JsonKey()
  final ContentBlocker? contentBlocker;
  @override
  @JsonKey()
  final String? word;
  @override
  @JsonKey()
  final bool? loading;
  @override
  @JsonKey()
  final BannerAd? bannerAd;
  @override
  @JsonKey()
  final bool? flag;
  @override
  @JsonKey()
  final bool? visible;

  @override
  String toString() {
    return 'NewsReadState(contentBlocker: $contentBlocker, word: $word, loading: $loading, bannerAd: $bannerAd, flag: $flag, visible: $visible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsReadStateImpl &&
            (identical(other.contentBlocker, contentBlocker) ||
                other.contentBlocker == contentBlocker) &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.bannerAd, bannerAd) ||
                other.bannerAd == bannerAd) &&
            (identical(other.flag, flag) || other.flag == flag) &&
            (identical(other.visible, visible) || other.visible == visible));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, contentBlocker, word, loading, bannerAd, flag, visible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsReadStateImplCopyWith<_$NewsReadStateImpl> get copyWith =>
      __$$NewsReadStateImplCopyWithImpl<_$NewsReadStateImpl>(this, _$identity);
}

abstract class _NewsReadState extends NewsReadState {
  const factory _NewsReadState(
      {final ContentBlocker? contentBlocker,
      final String? word,
      final bool? loading,
      final BannerAd? bannerAd,
      final bool? flag,
      final bool? visible}) = _$NewsReadStateImpl;
  const _NewsReadState._() : super._();

  @override
  ContentBlocker? get contentBlocker;
  @override
  String? get word;
  @override
  bool? get loading;
  @override
  BannerAd? get bannerAd;
  @override
  bool? get flag;
  @override
  bool? get visible;
  @override
  @JsonKey(ignore: true)
  _$$NewsReadStateImplCopyWith<_$NewsReadStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
