// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsState {
  ApiStatus? get apiStatus => throw _privateConstructorUsedError;
  NewModel? get news => throw _privateConstructorUsedError;
  int? get min => throw _privateConstructorUsedError;
  BannerAd? get bannerAd => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsStateCopyWith<NewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res, NewsState>;
  @useResult
  $Res call(
      {ApiStatus? apiStatus, NewModel? news, int? min, BannerAd? bannerAd});

  $NewModelCopyWith<$Res>? get news;
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res, $Val extends NewsState>
    implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = freezed,
    Object? news = freezed,
    Object? min = freezed,
    Object? bannerAd = freezed,
  }) {
    return _then(_value.copyWith(
      apiStatus: freezed == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus?,
      news: freezed == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as NewModel?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int?,
      bannerAd: freezed == bannerAd
          ? _value.bannerAd
          : bannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewModelCopyWith<$Res>? get news {
    if (_value.news == null) {
      return null;
    }

    return $NewModelCopyWith<$Res>(_value.news!, (value) {
      return _then(_value.copyWith(news: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewsStateImplCopyWith<$Res>
    implements $NewsStateCopyWith<$Res> {
  factory _$$NewsStateImplCopyWith(
          _$NewsStateImpl value, $Res Function(_$NewsStateImpl) then) =
      __$$NewsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiStatus? apiStatus, NewModel? news, int? min, BannerAd? bannerAd});

  @override
  $NewModelCopyWith<$Res>? get news;
}

/// @nodoc
class __$$NewsStateImplCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$NewsStateImpl>
    implements _$$NewsStateImplCopyWith<$Res> {
  __$$NewsStateImplCopyWithImpl(
      _$NewsStateImpl _value, $Res Function(_$NewsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = freezed,
    Object? news = freezed,
    Object? min = freezed,
    Object? bannerAd = freezed,
  }) {
    return _then(_$NewsStateImpl(
      apiStatus: freezed == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus?,
      news: freezed == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as NewModel?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int?,
      bannerAd: freezed == bannerAd
          ? _value.bannerAd
          : bannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd?,
    ));
  }
}

/// @nodoc

class _$NewsStateImpl extends _NewsState {
  const _$NewsStateImpl(
      {this.apiStatus = ApiStatus.init,
      this.news = null,
      this.min = 0,
      this.bannerAd = null})
      : super._();

  @override
  @JsonKey()
  final ApiStatus? apiStatus;
  @override
  @JsonKey()
  final NewModel? news;
  @override
  @JsonKey()
  final int? min;
  @override
  @JsonKey()
  final BannerAd? bannerAd;

  @override
  String toString() {
    return 'NewsState(apiStatus: $apiStatus, news: $news, min: $min, bannerAd: $bannerAd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsStateImpl &&
            (identical(other.apiStatus, apiStatus) ||
                other.apiStatus == apiStatus) &&
            (identical(other.news, news) || other.news == news) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.bannerAd, bannerAd) ||
                other.bannerAd == bannerAd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiStatus, news, min, bannerAd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsStateImplCopyWith<_$NewsStateImpl> get copyWith =>
      __$$NewsStateImplCopyWithImpl<_$NewsStateImpl>(this, _$identity);
}

abstract class _NewsState extends NewsState {
  const factory _NewsState(
      {final ApiStatus? apiStatus,
      final NewModel? news,
      final int? min,
      final BannerAd? bannerAd}) = _$NewsStateImpl;
  const _NewsState._() : super._();

  @override
  ApiStatus? get apiStatus;
  @override
  NewModel? get news;
  @override
  int? get min;
  @override
  BannerAd? get bannerAd;
  @override
  @JsonKey(ignore: true)
  _$$NewsStateImplCopyWith<_$NewsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
