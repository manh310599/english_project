// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Translate _$TranslateFromJson(Map<String, dynamic> json) {
  return _Translate.fromJson(json);
}

/// @nodoc
mixin _$Translate {
  List<Sentence>? get sentences => throw _privateConstructorUsedError;
  List<Dict>? get dict => throw _privateConstructorUsedError;
  String? get src => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TranslateCopyWith<Translate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslateCopyWith<$Res> {
  factory $TranslateCopyWith(Translate value, $Res Function(Translate) then) =
      _$TranslateCopyWithImpl<$Res, Translate>;
  @useResult
  $Res call({List<Sentence>? sentences, List<Dict>? dict, String? src});
}

/// @nodoc
class _$TranslateCopyWithImpl<$Res, $Val extends Translate>
    implements $TranslateCopyWith<$Res> {
  _$TranslateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sentences = freezed,
    Object? dict = freezed,
    Object? src = freezed,
  }) {
    return _then(_value.copyWith(
      sentences: freezed == sentences
          ? _value.sentences
          : sentences // ignore: cast_nullable_to_non_nullable
              as List<Sentence>?,
      dict: freezed == dict
          ? _value.dict
          : dict // ignore: cast_nullable_to_non_nullable
              as List<Dict>?,
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TranslateImplCopyWith<$Res>
    implements $TranslateCopyWith<$Res> {
  factory _$$TranslateImplCopyWith(
          _$TranslateImpl value, $Res Function(_$TranslateImpl) then) =
      __$$TranslateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Sentence>? sentences, List<Dict>? dict, String? src});
}

/// @nodoc
class __$$TranslateImplCopyWithImpl<$Res>
    extends _$TranslateCopyWithImpl<$Res, _$TranslateImpl>
    implements _$$TranslateImplCopyWith<$Res> {
  __$$TranslateImplCopyWithImpl(
      _$TranslateImpl _value, $Res Function(_$TranslateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sentences = freezed,
    Object? dict = freezed,
    Object? src = freezed,
  }) {
    return _then(_$TranslateImpl(
      sentences: freezed == sentences
          ? _value._sentences
          : sentences // ignore: cast_nullable_to_non_nullable
              as List<Sentence>?,
      dict: freezed == dict
          ? _value._dict
          : dict // ignore: cast_nullable_to_non_nullable
              as List<Dict>?,
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TranslateImpl implements _Translate {
  const _$TranslateImpl(
      {final List<Sentence>? sentences, final List<Dict>? dict, this.src})
      : _sentences = sentences,
        _dict = dict;

  factory _$TranslateImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslateImplFromJson(json);

  final List<Sentence>? _sentences;
  @override
  List<Sentence>? get sentences {
    final value = _sentences;
    if (value == null) return null;
    if (_sentences is EqualUnmodifiableListView) return _sentences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Dict>? _dict;
  @override
  List<Dict>? get dict {
    final value = _dict;
    if (value == null) return null;
    if (_dict is EqualUnmodifiableListView) return _dict;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? src;

  @override
  String toString() {
    return 'Translate(sentences: $sentences, dict: $dict, src: $src)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslateImpl &&
            const DeepCollectionEquality()
                .equals(other._sentences, _sentences) &&
            const DeepCollectionEquality().equals(other._dict, _dict) &&
            (identical(other.src, src) || other.src == src));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sentences),
      const DeepCollectionEquality().hash(_dict),
      src);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslateImplCopyWith<_$TranslateImpl> get copyWith =>
      __$$TranslateImplCopyWithImpl<_$TranslateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslateImplToJson(
      this,
    );
  }
}

abstract class _Translate implements Translate {
  const factory _Translate(
      {final List<Sentence>? sentences,
      final List<Dict>? dict,
      final String? src}) = _$TranslateImpl;

  factory _Translate.fromJson(Map<String, dynamic> json) =
      _$TranslateImpl.fromJson;

  @override
  List<Sentence>? get sentences;
  @override
  List<Dict>? get dict;
  @override
  String? get src;
  @override
  @JsonKey(ignore: true)
  _$$TranslateImplCopyWith<_$TranslateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Dict _$DictFromJson(Map<String, dynamic> json) {
  return _Dict.fromJson(json);
}

/// @nodoc
mixin _$Dict {
  String? get pos => throw _privateConstructorUsedError;
  List<String?>? get terms => throw _privateConstructorUsedError;
  List<Entry>? get entry => throw _privateConstructorUsedError;
  String? get baseForm => throw _privateConstructorUsedError;
  int? get posEnum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DictCopyWith<Dict> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictCopyWith<$Res> {
  factory $DictCopyWith(Dict value, $Res Function(Dict) then) =
      _$DictCopyWithImpl<$Res, Dict>;
  @useResult
  $Res call(
      {String? pos,
      List<String?>? terms,
      List<Entry>? entry,
      String? baseForm,
      int? posEnum});
}

/// @nodoc
class _$DictCopyWithImpl<$Res, $Val extends Dict>
    implements $DictCopyWith<$Res> {
  _$DictCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pos = freezed,
    Object? terms = freezed,
    Object? entry = freezed,
    Object? baseForm = freezed,
    Object? posEnum = freezed,
  }) {
    return _then(_value.copyWith(
      pos: freezed == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as String?,
      terms: freezed == terms
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      entry: freezed == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as List<Entry>?,
      baseForm: freezed == baseForm
          ? _value.baseForm
          : baseForm // ignore: cast_nullable_to_non_nullable
              as String?,
      posEnum: freezed == posEnum
          ? _value.posEnum
          : posEnum // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DictImplCopyWith<$Res> implements $DictCopyWith<$Res> {
  factory _$$DictImplCopyWith(
          _$DictImpl value, $Res Function(_$DictImpl) then) =
      __$$DictImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? pos,
      List<String?>? terms,
      List<Entry>? entry,
      String? baseForm,
      int? posEnum});
}

/// @nodoc
class __$$DictImplCopyWithImpl<$Res>
    extends _$DictCopyWithImpl<$Res, _$DictImpl>
    implements _$$DictImplCopyWith<$Res> {
  __$$DictImplCopyWithImpl(_$DictImpl _value, $Res Function(_$DictImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pos = freezed,
    Object? terms = freezed,
    Object? entry = freezed,
    Object? baseForm = freezed,
    Object? posEnum = freezed,
  }) {
    return _then(_$DictImpl(
      pos: freezed == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as String?,
      terms: freezed == terms
          ? _value._terms
          : terms // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      entry: freezed == entry
          ? _value._entry
          : entry // ignore: cast_nullable_to_non_nullable
              as List<Entry>?,
      baseForm: freezed == baseForm
          ? _value.baseForm
          : baseForm // ignore: cast_nullable_to_non_nullable
              as String?,
      posEnum: freezed == posEnum
          ? _value.posEnum
          : posEnum // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DictImpl implements _Dict {
  const _$DictImpl(
      {this.pos,
      final List<String?>? terms,
      final List<Entry>? entry,
      this.baseForm,
      this.posEnum})
      : _terms = terms,
        _entry = entry;

  factory _$DictImpl.fromJson(Map<String, dynamic> json) =>
      _$$DictImplFromJson(json);

  @override
  final String? pos;
  final List<String?>? _terms;
  @override
  List<String?>? get terms {
    final value = _terms;
    if (value == null) return null;
    if (_terms is EqualUnmodifiableListView) return _terms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Entry>? _entry;
  @override
  List<Entry>? get entry {
    final value = _entry;
    if (value == null) return null;
    if (_entry is EqualUnmodifiableListView) return _entry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? baseForm;
  @override
  final int? posEnum;

  @override
  String toString() {
    return 'Dict(pos: $pos, terms: $terms, entry: $entry, baseForm: $baseForm, posEnum: $posEnum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictImpl &&
            (identical(other.pos, pos) || other.pos == pos) &&
            const DeepCollectionEquality().equals(other._terms, _terms) &&
            const DeepCollectionEquality().equals(other._entry, _entry) &&
            (identical(other.baseForm, baseForm) ||
                other.baseForm == baseForm) &&
            (identical(other.posEnum, posEnum) || other.posEnum == posEnum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pos,
      const DeepCollectionEquality().hash(_terms),
      const DeepCollectionEquality().hash(_entry),
      baseForm,
      posEnum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DictImplCopyWith<_$DictImpl> get copyWith =>
      __$$DictImplCopyWithImpl<_$DictImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DictImplToJson(
      this,
    );
  }
}

abstract class _Dict implements Dict {
  const factory _Dict(
      {final String? pos,
      final List<String?>? terms,
      final List<Entry>? entry,
      final String? baseForm,
      final int? posEnum}) = _$DictImpl;

  factory _Dict.fromJson(Map<String, dynamic> json) = _$DictImpl.fromJson;

  @override
  String? get pos;
  @override
  List<String?>? get terms;
  @override
  List<Entry>? get entry;
  @override
  String? get baseForm;
  @override
  int? get posEnum;
  @override
  @JsonKey(ignore: true)
  _$$DictImplCopyWith<_$DictImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Entry _$EntryFromJson(Map<String, dynamic> json) {
  return _Entry.fromJson(json);
}

/// @nodoc
mixin _$Entry {
  String? get word => throw _privateConstructorUsedError;
  List<String?>? get reverseTranslation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntryCopyWith<Entry> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryCopyWith<$Res> {
  factory $EntryCopyWith(Entry value, $Res Function(Entry) then) =
      _$EntryCopyWithImpl<$Res, Entry>;
  @useResult
  $Res call({String? word, List<String?>? reverseTranslation});
}

/// @nodoc
class _$EntryCopyWithImpl<$Res, $Val extends Entry>
    implements $EntryCopyWith<$Res> {
  _$EntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = freezed,
    Object? reverseTranslation = freezed,
  }) {
    return _then(_value.copyWith(
      word: freezed == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String?,
      reverseTranslation: freezed == reverseTranslation
          ? _value.reverseTranslation
          : reverseTranslation // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntryImplCopyWith<$Res> implements $EntryCopyWith<$Res> {
  factory _$$EntryImplCopyWith(
          _$EntryImpl value, $Res Function(_$EntryImpl) then) =
      __$$EntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? word, List<String?>? reverseTranslation});
}

/// @nodoc
class __$$EntryImplCopyWithImpl<$Res>
    extends _$EntryCopyWithImpl<$Res, _$EntryImpl>
    implements _$$EntryImplCopyWith<$Res> {
  __$$EntryImplCopyWithImpl(
      _$EntryImpl _value, $Res Function(_$EntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = freezed,
    Object? reverseTranslation = freezed,
  }) {
    return _then(_$EntryImpl(
      word: freezed == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String?,
      reverseTranslation: freezed == reverseTranslation
          ? _value._reverseTranslation
          : reverseTranslation // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EntryImpl implements _Entry {
  const _$EntryImpl({this.word, final List<String?>? reverseTranslation})
      : _reverseTranslation = reverseTranslation;

  factory _$EntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$EntryImplFromJson(json);

  @override
  final String? word;
  final List<String?>? _reverseTranslation;
  @override
  List<String?>? get reverseTranslation {
    final value = _reverseTranslation;
    if (value == null) return null;
    if (_reverseTranslation is EqualUnmodifiableListView)
      return _reverseTranslation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Entry(word: $word, reverseTranslation: $reverseTranslation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntryImpl &&
            (identical(other.word, word) || other.word == word) &&
            const DeepCollectionEquality()
                .equals(other._reverseTranslation, _reverseTranslation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, word,
      const DeepCollectionEquality().hash(_reverseTranslation));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EntryImplCopyWith<_$EntryImpl> get copyWith =>
      __$$EntryImplCopyWithImpl<_$EntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EntryImplToJson(
      this,
    );
  }
}

abstract class _Entry implements Entry {
  const factory _Entry(
      {final String? word,
      final List<String?>? reverseTranslation}) = _$EntryImpl;

  factory _Entry.fromJson(Map<String, dynamic> json) = _$EntryImpl.fromJson;

  @override
  String? get word;
  @override
  List<String?>? get reverseTranslation;
  @override
  @JsonKey(ignore: true)
  _$$EntryImplCopyWith<_$EntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Sentence _$SentenceFromJson(Map<String, dynamic> json) {
  return _Sentence.fromJson(json);
}

/// @nodoc
mixin _$Sentence {
  String? get trans => throw _privateConstructorUsedError;
  String? get orig => throw _privateConstructorUsedError;
  int? get backend => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SentenceCopyWith<Sentence> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentenceCopyWith<$Res> {
  factory $SentenceCopyWith(Sentence value, $Res Function(Sentence) then) =
      _$SentenceCopyWithImpl<$Res, Sentence>;
  @useResult
  $Res call({String? trans, String? orig, int? backend});
}

/// @nodoc
class _$SentenceCopyWithImpl<$Res, $Val extends Sentence>
    implements $SentenceCopyWith<$Res> {
  _$SentenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trans = freezed,
    Object? orig = freezed,
    Object? backend = freezed,
  }) {
    return _then(_value.copyWith(
      trans: freezed == trans
          ? _value.trans
          : trans // ignore: cast_nullable_to_non_nullable
              as String?,
      orig: freezed == orig
          ? _value.orig
          : orig // ignore: cast_nullable_to_non_nullable
              as String?,
      backend: freezed == backend
          ? _value.backend
          : backend // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SentenceImplCopyWith<$Res>
    implements $SentenceCopyWith<$Res> {
  factory _$$SentenceImplCopyWith(
          _$SentenceImpl value, $Res Function(_$SentenceImpl) then) =
      __$$SentenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? trans, String? orig, int? backend});
}

/// @nodoc
class __$$SentenceImplCopyWithImpl<$Res>
    extends _$SentenceCopyWithImpl<$Res, _$SentenceImpl>
    implements _$$SentenceImplCopyWith<$Res> {
  __$$SentenceImplCopyWithImpl(
      _$SentenceImpl _value, $Res Function(_$SentenceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trans = freezed,
    Object? orig = freezed,
    Object? backend = freezed,
  }) {
    return _then(_$SentenceImpl(
      trans: freezed == trans
          ? _value.trans
          : trans // ignore: cast_nullable_to_non_nullable
              as String?,
      orig: freezed == orig
          ? _value.orig
          : orig // ignore: cast_nullable_to_non_nullable
              as String?,
      backend: freezed == backend
          ? _value.backend
          : backend // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SentenceImpl implements _Sentence {
  const _$SentenceImpl({this.trans, this.orig, this.backend});

  factory _$SentenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SentenceImplFromJson(json);

  @override
  final String? trans;
  @override
  final String? orig;
  @override
  final int? backend;

  @override
  String toString() {
    return 'Sentence(trans: $trans, orig: $orig, backend: $backend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentenceImpl &&
            (identical(other.trans, trans) || other.trans == trans) &&
            (identical(other.orig, orig) || other.orig == orig) &&
            (identical(other.backend, backend) || other.backend == backend));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, trans, orig, backend);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SentenceImplCopyWith<_$SentenceImpl> get copyWith =>
      __$$SentenceImplCopyWithImpl<_$SentenceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SentenceImplToJson(
      this,
    );
  }
}

abstract class _Sentence implements Sentence {
  const factory _Sentence(
      {final String? trans,
      final String? orig,
      final int? backend}) = _$SentenceImpl;

  factory _Sentence.fromJson(Map<String, dynamic> json) =
      _$SentenceImpl.fromJson;

  @override
  String? get trans;
  @override
  String? get orig;
  @override
  int? get backend;
  @override
  @JsonKey(ignore: true)
  _$$SentenceImplCopyWith<_$SentenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
