// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pdf_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PdfState {
  File? get path => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  PDFLoading get pdfLoading => throw _privateConstructorUsedError;
  String? get selectText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PdfStateCopyWith<PdfState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfStateCopyWith<$Res> {
  factory $PdfStateCopyWith(PdfState value, $Res Function(PdfState) then) =
      _$PdfStateCopyWithImpl<$Res, PdfState>;
  @useResult
  $Res call(
      {File? path, String? content, PDFLoading pdfLoading, String? selectText});
}

/// @nodoc
class _$PdfStateCopyWithImpl<$Res, $Val extends PdfState>
    implements $PdfStateCopyWith<$Res> {
  _$PdfStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
    Object? content = freezed,
    Object? pdfLoading = null,
    Object? selectText = freezed,
  }) {
    return _then(_value.copyWith(
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as File?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      pdfLoading: null == pdfLoading
          ? _value.pdfLoading
          : pdfLoading // ignore: cast_nullable_to_non_nullable
              as PDFLoading,
      selectText: freezed == selectText
          ? _value.selectText
          : selectText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PdfStateImplCopyWith<$Res>
    implements $PdfStateCopyWith<$Res> {
  factory _$$PdfStateImplCopyWith(
          _$PdfStateImpl value, $Res Function(_$PdfStateImpl) then) =
      __$$PdfStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {File? path, String? content, PDFLoading pdfLoading, String? selectText});
}

/// @nodoc
class __$$PdfStateImplCopyWithImpl<$Res>
    extends _$PdfStateCopyWithImpl<$Res, _$PdfStateImpl>
    implements _$$PdfStateImplCopyWith<$Res> {
  __$$PdfStateImplCopyWithImpl(
      _$PdfStateImpl _value, $Res Function(_$PdfStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
    Object? content = freezed,
    Object? pdfLoading = null,
    Object? selectText = freezed,
  }) {
    return _then(_$PdfStateImpl(
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as File?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      pdfLoading: null == pdfLoading
          ? _value.pdfLoading
          : pdfLoading // ignore: cast_nullable_to_non_nullable
              as PDFLoading,
      selectText: freezed == selectText
          ? _value.selectText
          : selectText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PdfStateImpl extends _PdfState {
  const _$PdfStateImpl(
      {this.path = null,
      this.content = null,
      this.pdfLoading = PDFLoading.start,
      this.selectText = null})
      : super._();

  @override
  @JsonKey()
  final File? path;
  @override
  @JsonKey()
  final String? content;
  @override
  @JsonKey()
  final PDFLoading pdfLoading;
  @override
  @JsonKey()
  final String? selectText;

  @override
  String toString() {
    return 'PdfState(path: $path, content: $content, pdfLoading: $pdfLoading, selectText: $selectText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PdfStateImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.pdfLoading, pdfLoading) ||
                other.pdfLoading == pdfLoading) &&
            (identical(other.selectText, selectText) ||
                other.selectText == selectText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, path, content, pdfLoading, selectText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PdfStateImplCopyWith<_$PdfStateImpl> get copyWith =>
      __$$PdfStateImplCopyWithImpl<_$PdfStateImpl>(this, _$identity);
}

abstract class _PdfState extends PdfState {
  const factory _PdfState(
      {final File? path,
      final String? content,
      final PDFLoading pdfLoading,
      final String? selectText}) = _$PdfStateImpl;
  const _PdfState._() : super._();

  @override
  File? get path;
  @override
  String? get content;
  @override
  PDFLoading get pdfLoading;
  @override
  String? get selectText;
  @override
  @JsonKey(ignore: true)
  _$$PdfStateImplCopyWith<_$PdfStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
