// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'export_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExportState {
  ExportImportFile get exportImportFile => throw _privateConstructorUsedError;
  List<StorageWord?>? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExportStateCopyWith<ExportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExportStateCopyWith<$Res> {
  factory $ExportStateCopyWith(
          ExportState value, $Res Function(ExportState) then) =
      _$ExportStateCopyWithImpl<$Res, ExportState>;
  @useResult
  $Res call({ExportImportFile exportImportFile, List<StorageWord?>? data});
}

/// @nodoc
class _$ExportStateCopyWithImpl<$Res, $Val extends ExportState>
    implements $ExportStateCopyWith<$Res> {
  _$ExportStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exportImportFile = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      exportImportFile: null == exportImportFile
          ? _value.exportImportFile
          : exportImportFile // ignore: cast_nullable_to_non_nullable
              as ExportImportFile,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StorageWord?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExportStateImplCopyWith<$Res>
    implements $ExportStateCopyWith<$Res> {
  factory _$$ExportStateImplCopyWith(
          _$ExportStateImpl value, $Res Function(_$ExportStateImpl) then) =
      __$$ExportStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExportImportFile exportImportFile, List<StorageWord?>? data});
}

/// @nodoc
class __$$ExportStateImplCopyWithImpl<$Res>
    extends _$ExportStateCopyWithImpl<$Res, _$ExportStateImpl>
    implements _$$ExportStateImplCopyWith<$Res> {
  __$$ExportStateImplCopyWithImpl(
      _$ExportStateImpl _value, $Res Function(_$ExportStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exportImportFile = null,
    Object? data = freezed,
  }) {
    return _then(_$ExportStateImpl(
      exportImportFile: null == exportImportFile
          ? _value.exportImportFile
          : exportImportFile // ignore: cast_nullable_to_non_nullable
              as ExportImportFile,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StorageWord?>?,
    ));
  }
}

/// @nodoc

class _$ExportStateImpl extends _ExportState {
  const _$ExportStateImpl(
      {this.exportImportFile = ExportImportFile.init,
      final List<StorageWord?>? data = null})
      : _data = data,
        super._();

  @override
  @JsonKey()
  final ExportImportFile exportImportFile;
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
    return 'ExportState(exportImportFile: $exportImportFile, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExportStateImpl &&
            (identical(other.exportImportFile, exportImportFile) ||
                other.exportImportFile == exportImportFile) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exportImportFile,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExportStateImplCopyWith<_$ExportStateImpl> get copyWith =>
      __$$ExportStateImplCopyWithImpl<_$ExportStateImpl>(this, _$identity);
}

abstract class _ExportState extends ExportState {
  const factory _ExportState(
      {final ExportImportFile exportImportFile,
      final List<StorageWord?>? data}) = _$ExportStateImpl;
  const _ExportState._() : super._();

  @override
  ExportImportFile get exportImportFile;
  @override
  List<StorageWord?>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ExportStateImplCopyWith<_$ExportStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
