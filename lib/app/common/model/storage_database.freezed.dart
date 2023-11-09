// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_database.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Storage _$StorageFromJson(Map<String, dynamic> json) {
  return _Storage.fromJson(json);
}

/// @nodoc
mixin _$Storage {
  int? get idNF => throw _privateConstructorUsedError;
  int? get idSW => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StorageCopyWith<Storage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageCopyWith<$Res> {
  factory $StorageCopyWith(Storage value, $Res Function(Storage) then) =
      _$StorageCopyWithImpl<$Res, Storage>;
  @useResult
  $Res call({int? idNF, int? idSW});
}

/// @nodoc
class _$StorageCopyWithImpl<$Res, $Val extends Storage>
    implements $StorageCopyWith<$Res> {
  _$StorageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idNF = freezed,
    Object? idSW = freezed,
  }) {
    return _then(_value.copyWith(
      idNF: freezed == idNF
          ? _value.idNF
          : idNF // ignore: cast_nullable_to_non_nullable
              as int?,
      idSW: freezed == idSW
          ? _value.idSW
          : idSW // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StorageImplCopyWith<$Res> implements $StorageCopyWith<$Res> {
  factory _$$StorageImplCopyWith(
          _$StorageImpl value, $Res Function(_$StorageImpl) then) =
      __$$StorageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? idNF, int? idSW});
}

/// @nodoc
class __$$StorageImplCopyWithImpl<$Res>
    extends _$StorageCopyWithImpl<$Res, _$StorageImpl>
    implements _$$StorageImplCopyWith<$Res> {
  __$$StorageImplCopyWithImpl(
      _$StorageImpl _value, $Res Function(_$StorageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idNF = freezed,
    Object? idSW = freezed,
  }) {
    return _then(_$StorageImpl(
      idNF: freezed == idNF
          ? _value.idNF
          : idNF // ignore: cast_nullable_to_non_nullable
              as int?,
      idSW: freezed == idSW
          ? _value.idSW
          : idSW // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StorageImpl implements _Storage {
  const _$StorageImpl({this.idNF, this.idSW});

  factory _$StorageImpl.fromJson(Map<String, dynamic> json) =>
      _$$StorageImplFromJson(json);

  @override
  final int? idNF;
  @override
  final int? idSW;

  @override
  String toString() {
    return 'Storage(idNF: $idNF, idSW: $idSW)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageImpl &&
            (identical(other.idNF, idNF) || other.idNF == idNF) &&
            (identical(other.idSW, idSW) || other.idSW == idSW));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idNF, idSW);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageImplCopyWith<_$StorageImpl> get copyWith =>
      __$$StorageImplCopyWithImpl<_$StorageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StorageImplToJson(
      this,
    );
  }
}

abstract class _Storage implements Storage {
  const factory _Storage({final int? idNF, final int? idSW}) = _$StorageImpl;

  factory _Storage.fromJson(Map<String, dynamic> json) = _$StorageImpl.fromJson;

  @override
  int? get idNF;
  @override
  int? get idSW;
  @override
  @JsonKey(ignore: true)
  _$$StorageImplCopyWith<_$StorageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsFavorite _$NewsFavoriteFromJson(Map<String, dynamic> json) {
  return _NewsFavorite.fromJson(json);
}

/// @nodoc
mixin _$NewsFavorite {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get idNew => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsFavoriteCopyWith<NewsFavorite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsFavoriteCopyWith<$Res> {
  factory $NewsFavoriteCopyWith(
          NewsFavorite value, $Res Function(NewsFavorite) then) =
      _$NewsFavoriteCopyWithImpl<$Res, NewsFavorite>;
  @useResult
  $Res call({int? id, String? name, int? idNew});
}

/// @nodoc
class _$NewsFavoriteCopyWithImpl<$Res, $Val extends NewsFavorite>
    implements $NewsFavoriteCopyWith<$Res> {
  _$NewsFavoriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? idNew = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      idNew: freezed == idNew
          ? _value.idNew
          : idNew // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsFavoriteImplCopyWith<$Res>
    implements $NewsFavoriteCopyWith<$Res> {
  factory _$$NewsFavoriteImplCopyWith(
          _$NewsFavoriteImpl value, $Res Function(_$NewsFavoriteImpl) then) =
      __$$NewsFavoriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, int? idNew});
}

/// @nodoc
class __$$NewsFavoriteImplCopyWithImpl<$Res>
    extends _$NewsFavoriteCopyWithImpl<$Res, _$NewsFavoriteImpl>
    implements _$$NewsFavoriteImplCopyWith<$Res> {
  __$$NewsFavoriteImplCopyWithImpl(
      _$NewsFavoriteImpl _value, $Res Function(_$NewsFavoriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? idNew = freezed,
  }) {
    return _then(_$NewsFavoriteImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      idNew: freezed == idNew
          ? _value.idNew
          : idNew // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsFavoriteImpl implements _NewsFavorite {
  const _$NewsFavoriteImpl({this.id, this.name, this.idNew});

  factory _$NewsFavoriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsFavoriteImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? idNew;

  @override
  String toString() {
    return 'NewsFavorite(id: $id, name: $name, idNew: $idNew)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsFavoriteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.idNew, idNew) || other.idNew == idNew));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, idNew);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsFavoriteImplCopyWith<_$NewsFavoriteImpl> get copyWith =>
      __$$NewsFavoriteImplCopyWithImpl<_$NewsFavoriteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsFavoriteImplToJson(
      this,
    );
  }
}

abstract class _NewsFavorite implements NewsFavorite {
  const factory _NewsFavorite(
      {final int? id,
      final String? name,
      final int? idNew}) = _$NewsFavoriteImpl;

  factory _NewsFavorite.fromJson(Map<String, dynamic> json) =
      _$NewsFavoriteImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get idNew;
  @override
  @JsonKey(ignore: true)
  _$$NewsFavoriteImplCopyWith<_$NewsFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

News _$NewsFromJson(Map<String, dynamic> json) {
  return _News.fromJson(json);
}

/// @nodoc
mixin _$News {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(fromJson: fromJsonImageAssets, toJson: toJsonImageAssets)
  Uint8List? get imageAssets => throw _privateConstructorUsedError;
  String? get startTime => throw _privateConstructorUsedError;
  String? get finalTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsCopyWith<News> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCopyWith<$Res> {
  factory $NewsCopyWith(News value, $Res Function(News) then) =
      _$NewsCopyWithImpl<$Res, News>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? description,
      String? url,
      String? imageUrl,
      @JsonKey(fromJson: fromJsonImageAssets, toJson: toJsonImageAssets)
      Uint8List? imageAssets,
      String? startTime,
      String? finalTime});
}

/// @nodoc
class _$NewsCopyWithImpl<$Res, $Val extends News>
    implements $NewsCopyWith<$Res> {
  _$NewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? imageAssets = freezed,
    Object? startTime = freezed,
    Object? finalTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageAssets: freezed == imageAssets
          ? _value.imageAssets
          : imageAssets // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      finalTime: freezed == finalTime
          ? _value.finalTime
          : finalTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsImplCopyWith<$Res> implements $NewsCopyWith<$Res> {
  factory _$$NewsImplCopyWith(
          _$NewsImpl value, $Res Function(_$NewsImpl) then) =
      __$$NewsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? description,
      String? url,
      String? imageUrl,
      @JsonKey(fromJson: fromJsonImageAssets, toJson: toJsonImageAssets)
      Uint8List? imageAssets,
      String? startTime,
      String? finalTime});
}

/// @nodoc
class __$$NewsImplCopyWithImpl<$Res>
    extends _$NewsCopyWithImpl<$Res, _$NewsImpl>
    implements _$$NewsImplCopyWith<$Res> {
  __$$NewsImplCopyWithImpl(_$NewsImpl _value, $Res Function(_$NewsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? imageAssets = freezed,
    Object? startTime = freezed,
    Object? finalTime = freezed,
  }) {
    return _then(_$NewsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageAssets: freezed == imageAssets
          ? _value.imageAssets
          : imageAssets // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      finalTime: freezed == finalTime
          ? _value.finalTime
          : finalTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsImpl implements _News {
  _$NewsImpl(
      {this.id,
      this.title,
      this.description,
      this.url,
      this.imageUrl,
      @JsonKey(fromJson: fromJsonImageAssets, toJson: toJsonImageAssets)
      this.imageAssets,
      this.startTime,
      this.finalTime});

  factory _$NewsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? url;
  @override
  final String? imageUrl;
  @override
  @JsonKey(fromJson: fromJsonImageAssets, toJson: toJsonImageAssets)
  final Uint8List? imageAssets;
  @override
  final String? startTime;
  @override
  final String? finalTime;

  @override
  String toString() {
    return 'News(id: $id, title: $title, description: $description, url: $url, imageUrl: $imageUrl, imageAssets: $imageAssets, startTime: $startTime, finalTime: $finalTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.imageAssets, imageAssets) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.finalTime, finalTime) ||
                other.finalTime == finalTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      url,
      imageUrl,
      const DeepCollectionEquality().hash(imageAssets),
      startTime,
      finalTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsImplCopyWith<_$NewsImpl> get copyWith =>
      __$$NewsImplCopyWithImpl<_$NewsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsImplToJson(
      this,
    );
  }
}

abstract class _News implements News {
  factory _News(
      {final int? id,
      final String? title,
      final String? description,
      final String? url,
      final String? imageUrl,
      @JsonKey(fromJson: fromJsonImageAssets, toJson: toJsonImageAssets)
      final Uint8List? imageAssets,
      final String? startTime,
      final String? finalTime}) = _$NewsImpl;

  factory _News.fromJson(Map<String, dynamic> json) = _$NewsImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get url;
  @override
  String? get imageUrl;
  @override
  @JsonKey(fromJson: fromJsonImageAssets, toJson: toJsonImageAssets)
  Uint8List? get imageAssets;
  @override
  String? get startTime;
  @override
  String? get finalTime;
  @override
  @JsonKey(ignore: true)
  _$$NewsImplCopyWith<_$NewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StorageWords _$StorageWordsFromJson(Map<String, dynamic> json) {
  return _StorageWords.fromJson(json);
}

/// @nodoc
mixin _$StorageWords {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get idWord => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StorageWordsCopyWith<StorageWords> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageWordsCopyWith<$Res> {
  factory $StorageWordsCopyWith(
          StorageWords value, $Res Function(StorageWords) then) =
      _$StorageWordsCopyWithImpl<$Res, StorageWords>;
  @useResult
  $Res call({int? id, String? name, int? idWord});
}

/// @nodoc
class _$StorageWordsCopyWithImpl<$Res, $Val extends StorageWords>
    implements $StorageWordsCopyWith<$Res> {
  _$StorageWordsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? idWord = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      idWord: freezed == idWord
          ? _value.idWord
          : idWord // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StorageWordsImplCopyWith<$Res>
    implements $StorageWordsCopyWith<$Res> {
  factory _$$StorageWordsImplCopyWith(
          _$StorageWordsImpl value, $Res Function(_$StorageWordsImpl) then) =
      __$$StorageWordsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, int? idWord});
}

/// @nodoc
class __$$StorageWordsImplCopyWithImpl<$Res>
    extends _$StorageWordsCopyWithImpl<$Res, _$StorageWordsImpl>
    implements _$$StorageWordsImplCopyWith<$Res> {
  __$$StorageWordsImplCopyWithImpl(
      _$StorageWordsImpl _value, $Res Function(_$StorageWordsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? idWord = freezed,
  }) {
    return _then(_$StorageWordsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      idWord: freezed == idWord
          ? _value.idWord
          : idWord // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StorageWordsImpl implements _StorageWords {
  const _$StorageWordsImpl({this.id, this.name, this.idWord});

  factory _$StorageWordsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StorageWordsImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? idWord;

  @override
  String toString() {
    return 'StorageWords(id: $id, name: $name, idWord: $idWord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageWordsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.idWord, idWord) || other.idWord == idWord));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, idWord);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageWordsImplCopyWith<_$StorageWordsImpl> get copyWith =>
      __$$StorageWordsImplCopyWithImpl<_$StorageWordsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StorageWordsImplToJson(
      this,
    );
  }
}

abstract class _StorageWords implements StorageWords {
  const factory _StorageWords(
      {final int? id,
      final String? name,
      final int? idWord}) = _$StorageWordsImpl;

  factory _StorageWords.fromJson(Map<String, dynamic> json) =
      _$StorageWordsImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get idWord;
  @override
  @JsonKey(ignore: true)
  _$$StorageWordsImplCopyWith<_$StorageWordsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Words _$WordsFromJson(Map<String, dynamic> json) {
  return _Words.fromJson(json);
}

/// @nodoc
mixin _$Words {
  int? get id => throw _privateConstructorUsedError;
  String? get word => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get meaning => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordsCopyWith<Words> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordsCopyWith<$Res> {
  factory $WordsCopyWith(Words value, $Res Function(Words) then) =
      _$WordsCopyWithImpl<$Res, Words>;
  @useResult
  $Res call({int? id, String? word, String? image, String? meaning});
}

/// @nodoc
class _$WordsCopyWithImpl<$Res, $Val extends Words>
    implements $WordsCopyWith<$Res> {
  _$WordsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? word = freezed,
    Object? image = freezed,
    Object? meaning = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      word: freezed == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      meaning: freezed == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordsImplCopyWith<$Res> implements $WordsCopyWith<$Res> {
  factory _$$WordsImplCopyWith(
          _$WordsImpl value, $Res Function(_$WordsImpl) then) =
      __$$WordsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? word, String? image, String? meaning});
}

/// @nodoc
class __$$WordsImplCopyWithImpl<$Res>
    extends _$WordsCopyWithImpl<$Res, _$WordsImpl>
    implements _$$WordsImplCopyWith<$Res> {
  __$$WordsImplCopyWithImpl(
      _$WordsImpl _value, $Res Function(_$WordsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? word = freezed,
    Object? image = freezed,
    Object? meaning = freezed,
  }) {
    return _then(_$WordsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      word: freezed == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      meaning: freezed == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WordsImpl implements _Words {
  const _$WordsImpl({this.id, this.word, this.image, this.meaning});

  factory _$WordsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordsImplFromJson(json);

  @override
  final int? id;
  @override
  final String? word;
  @override
  final String? image;
  @override
  final String? meaning;

  @override
  String toString() {
    return 'Words(id: $id, word: $word, image: $image, meaning: $meaning)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.meaning, meaning) || other.meaning == meaning));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, word, image, meaning);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordsImplCopyWith<_$WordsImpl> get copyWith =>
      __$$WordsImplCopyWithImpl<_$WordsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WordsImplToJson(
      this,
    );
  }
}

abstract class _Words implements Words {
  const factory _Words(
      {final int? id,
      final String? word,
      final String? image,
      final String? meaning}) = _$WordsImpl;

  factory _Words.fromJson(Map<String, dynamic> json) = _$WordsImpl.fromJson;

  @override
  int? get id;
  @override
  String? get word;
  @override
  String? get image;
  @override
  String? get meaning;
  @override
  @JsonKey(ignore: true)
  _$$WordsImplCopyWith<_$WordsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
