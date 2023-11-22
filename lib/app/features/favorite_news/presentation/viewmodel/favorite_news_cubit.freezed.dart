// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_news_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteNewsState {
  ApiStatus? get apiStatus => throw _privateConstructorUsedError;
  List<News?>? get news => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteNewsStateCopyWith<FavoriteNewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteNewsStateCopyWith<$Res> {
  factory $FavoriteNewsStateCopyWith(
          FavoriteNewsState value, $Res Function(FavoriteNewsState) then) =
      _$FavoriteNewsStateCopyWithImpl<$Res, FavoriteNewsState>;
  @useResult
  $Res call({ApiStatus? apiStatus, List<News?>? news});
}

/// @nodoc
class _$FavoriteNewsStateCopyWithImpl<$Res, $Val extends FavoriteNewsState>
    implements $FavoriteNewsStateCopyWith<$Res> {
  _$FavoriteNewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = freezed,
    Object? news = freezed,
  }) {
    return _then(_value.copyWith(
      apiStatus: freezed == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus?,
      news: freezed == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<News?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteNewsStateImplCopyWith<$Res>
    implements $FavoriteNewsStateCopyWith<$Res> {
  factory _$$FavoriteNewsStateImplCopyWith(_$FavoriteNewsStateImpl value,
          $Res Function(_$FavoriteNewsStateImpl) then) =
      __$$FavoriteNewsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiStatus? apiStatus, List<News?>? news});
}

/// @nodoc
class __$$FavoriteNewsStateImplCopyWithImpl<$Res>
    extends _$FavoriteNewsStateCopyWithImpl<$Res, _$FavoriteNewsStateImpl>
    implements _$$FavoriteNewsStateImplCopyWith<$Res> {
  __$$FavoriteNewsStateImplCopyWithImpl(_$FavoriteNewsStateImpl _value,
      $Res Function(_$FavoriteNewsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = freezed,
    Object? news = freezed,
  }) {
    return _then(_$FavoriteNewsStateImpl(
      apiStatus: freezed == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus?,
      news: freezed == news
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<News?>?,
    ));
  }
}

/// @nodoc

class _$FavoriteNewsStateImpl extends _FavoriteNewsState {
  const _$FavoriteNewsStateImpl(
      {this.apiStatus = ApiStatus.init, final List<News?>? news = null})
      : _news = news,
        super._();

  @override
  @JsonKey()
  final ApiStatus? apiStatus;
  final List<News?>? _news;
  @override
  @JsonKey()
  List<News?>? get news {
    final value = _news;
    if (value == null) return null;
    if (_news is EqualUnmodifiableListView) return _news;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FavoriteNewsState(apiStatus: $apiStatus, news: $news)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteNewsStateImpl &&
            (identical(other.apiStatus, apiStatus) ||
                other.apiStatus == apiStatus) &&
            const DeepCollectionEquality().equals(other._news, _news));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, apiStatus, const DeepCollectionEquality().hash(_news));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteNewsStateImplCopyWith<_$FavoriteNewsStateImpl> get copyWith =>
      __$$FavoriteNewsStateImplCopyWithImpl<_$FavoriteNewsStateImpl>(
          this, _$identity);
}

abstract class _FavoriteNewsState extends FavoriteNewsState {
  const factory _FavoriteNewsState(
      {final ApiStatus? apiStatus,
      final List<News?>? news}) = _$FavoriteNewsStateImpl;
  const _FavoriteNewsState._() : super._();

  @override
  ApiStatus? get apiStatus;
  @override
  List<News?>? get news;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteNewsStateImplCopyWith<_$FavoriteNewsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
