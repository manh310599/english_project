// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CourseState {
  ApiStatus? get apiStatus => throw _privateConstructorUsedError;
  List<Words?>? get data => throw _privateConstructorUsedError;
  int? get min => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseStateCopyWith<CourseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseStateCopyWith<$Res> {
  factory $CourseStateCopyWith(
          CourseState value, $Res Function(CourseState) then) =
      _$CourseStateCopyWithImpl<$Res, CourseState>;
  @useResult
  $Res call({ApiStatus? apiStatus, List<Words?>? data, int? min});
}

/// @nodoc
class _$CourseStateCopyWithImpl<$Res, $Val extends CourseState>
    implements $CourseStateCopyWith<$Res> {
  _$CourseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = freezed,
    Object? data = freezed,
    Object? min = freezed,
  }) {
    return _then(_value.copyWith(
      apiStatus: freezed == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Words?>?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseStateImplCopyWith<$Res>
    implements $CourseStateCopyWith<$Res> {
  factory _$$CourseStateImplCopyWith(
          _$CourseStateImpl value, $Res Function(_$CourseStateImpl) then) =
      __$$CourseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiStatus? apiStatus, List<Words?>? data, int? min});
}

/// @nodoc
class __$$CourseStateImplCopyWithImpl<$Res>
    extends _$CourseStateCopyWithImpl<$Res, _$CourseStateImpl>
    implements _$$CourseStateImplCopyWith<$Res> {
  __$$CourseStateImplCopyWithImpl(
      _$CourseStateImpl _value, $Res Function(_$CourseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = freezed,
    Object? data = freezed,
    Object? min = freezed,
  }) {
    return _then(_$CourseStateImpl(
      apiStatus: freezed == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Words?>?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$CourseStateImpl extends _CourseState {
  const _$CourseStateImpl(
      {this.apiStatus = ApiStatus.init,
      final List<Words?>? data = null,
      this.min = 0})
      : _data = data,
        super._();

  @override
  @JsonKey()
  final ApiStatus? apiStatus;
  final List<Words?>? _data;
  @override
  @JsonKey()
  List<Words?>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int? min;

  @override
  String toString() {
    return 'CourseState(apiStatus: $apiStatus, data: $data, min: $min)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseStateImpl &&
            (identical(other.apiStatus, apiStatus) ||
                other.apiStatus == apiStatus) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.min, min) || other.min == min));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, apiStatus, const DeepCollectionEquality().hash(_data), min);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseStateImplCopyWith<_$CourseStateImpl> get copyWith =>
      __$$CourseStateImplCopyWithImpl<_$CourseStateImpl>(this, _$identity);
}

abstract class _CourseState extends CourseState {
  const factory _CourseState(
      {final ApiStatus? apiStatus,
      final List<Words?>? data,
      final int? min}) = _$CourseStateImpl;
  const _CourseState._() : super._();

  @override
  ApiStatus? get apiStatus;
  @override
  List<Words?>? get data;
  @override
  int? get min;
  @override
  @JsonKey(ignore: true)
  _$$CourseStateImplCopyWith<_$CourseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
