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
  $Res call({ContentBlocker? contentBlocker});
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
  }) {
    return _then(_value.copyWith(
      contentBlocker: freezed == contentBlocker
          ? _value.contentBlocker
          : contentBlocker // ignore: cast_nullable_to_non_nullable
              as ContentBlocker?,
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
  $Res call({ContentBlocker? contentBlocker});
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
  }) {
    return _then(_$NewsReadStateImpl(
      contentBlocker: freezed == contentBlocker
          ? _value.contentBlocker
          : contentBlocker // ignore: cast_nullable_to_non_nullable
              as ContentBlocker?,
    ));
  }
}

/// @nodoc

class _$NewsReadStateImpl extends _NewsReadState {
  const _$NewsReadStateImpl({this.contentBlocker = null}) : super._();

  @override
  @JsonKey()
  final ContentBlocker? contentBlocker;

  @override
  String toString() {
    return 'NewsReadState(contentBlocker: $contentBlocker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsReadStateImpl &&
            (identical(other.contentBlocker, contentBlocker) ||
                other.contentBlocker == contentBlocker));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contentBlocker);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsReadStateImplCopyWith<_$NewsReadStateImpl> get copyWith =>
      __$$NewsReadStateImplCopyWithImpl<_$NewsReadStateImpl>(this, _$identity);
}

abstract class _NewsReadState extends NewsReadState {
  const factory _NewsReadState({final ContentBlocker? contentBlocker}) =
      _$NewsReadStateImpl;
  const _NewsReadState._() : super._();

  @override
  ContentBlocker? get contentBlocker;
  @override
  @JsonKey(ignore: true)
  _$$NewsReadStateImplCopyWith<_$NewsReadStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
