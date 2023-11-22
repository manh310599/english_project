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

StorageWord _$StorageWordFromJson(Map<String, dynamic> json) {
  return _StorageWord.fromJson(json);
}

/// @nodoc
mixin _$StorageWord {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StorageWordCopyWith<StorageWord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageWordCopyWith<$Res> {
  factory $StorageWordCopyWith(
          StorageWord value, $Res Function(StorageWord) then) =
      _$StorageWordCopyWithImpl<$Res, StorageWord>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$StorageWordCopyWithImpl<$Res, $Val extends StorageWord>
    implements $StorageWordCopyWith<$Res> {
  _$StorageWordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StorageWordImplCopyWith<$Res>
    implements $StorageWordCopyWith<$Res> {
  factory _$$StorageWordImplCopyWith(
          _$StorageWordImpl value, $Res Function(_$StorageWordImpl) then) =
      __$$StorageWordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$StorageWordImplCopyWithImpl<$Res>
    extends _$StorageWordCopyWithImpl<$Res, _$StorageWordImpl>
    implements _$$StorageWordImplCopyWith<$Res> {
  __$$StorageWordImplCopyWithImpl(
      _$StorageWordImpl _value, $Res Function(_$StorageWordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$StorageWordImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StorageWordImpl implements _StorageWord {
  const _$StorageWordImpl({this.id, this.name});

  factory _$StorageWordImpl.fromJson(Map<String, dynamic> json) =>
      _$$StorageWordImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'StorageWord(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageWordImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageWordImplCopyWith<_$StorageWordImpl> get copyWith =>
      __$$StorageWordImplCopyWithImpl<_$StorageWordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StorageWordImplToJson(
      this,
    );
  }
}

abstract class _StorageWord implements StorageWord {
  const factory _StorageWord({final int? id, final String? name}) =
      _$StorageWordImpl;

  factory _StorageWord.fromJson(Map<String, dynamic> json) =
      _$StorageWordImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$StorageWordImplCopyWith<_$StorageWordImpl> get copyWith =>
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
  String? get image => throw _privateConstructorUsedError;

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
      String? image});
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
    Object? image = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
      String? image});
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
    Object? image = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsImpl implements _News {
  const _$NewsImpl(
      {this.id, this.title, this.description, this.url, this.image});

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
  final String? image;

  @override
  String toString() {
    return 'News(id: $id, title: $title, description: $description, url: $url, image: $image)';
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
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, url, image);

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
  const factory _News(
      {final int? id,
      final String? title,
      final String? description,
      final String? url,
      final String? image}) = _$NewsImpl;

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
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$NewsImplCopyWith<_$NewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Words _$WordsFromJson(Map<String, dynamic> json) {
  return _Words.fromJson(json);
}

/// @nodoc
mixin _$Words {
  String? get word => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get assets_image => throw _privateConstructorUsedError;
  String? get mean => throw _privateConstructorUsedError;
  int? get start_time => throw _privateConstructorUsedError;
  int? get end_time => throw _privateConstructorUsedError;
  double? get EF => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  int? get checkNew => throw _privateConstructorUsedError;
  int? get lastChoice => throw _privateConstructorUsedError;
  int? get interval => throw _privateConstructorUsedError;
  double? get ease => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordsCopyWith<Words> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordsCopyWith<$Res> {
  factory $WordsCopyWith(Words value, $Res Function(Words) then) =
      _$WordsCopyWithImpl<$Res, Words>;
  @useResult
  $Res call(
      {String? word,
      String? image,
      String? assets_image,
      String? mean,
      int? start_time,
      int? end_time,
      double? EF,
      int? id,
      int? checkNew,
      int? lastChoice,
      int? interval,
      double? ease});
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
    Object? word = freezed,
    Object? image = freezed,
    Object? assets_image = freezed,
    Object? mean = freezed,
    Object? start_time = freezed,
    Object? end_time = freezed,
    Object? EF = freezed,
    Object? id = freezed,
    Object? checkNew = freezed,
    Object? lastChoice = freezed,
    Object? interval = freezed,
    Object? ease = freezed,
  }) {
    return _then(_value.copyWith(
      word: freezed == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      assets_image: freezed == assets_image
          ? _value.assets_image
          : assets_image // ignore: cast_nullable_to_non_nullable
              as String?,
      mean: freezed == mean
          ? _value.mean
          : mean // ignore: cast_nullable_to_non_nullable
              as String?,
      start_time: freezed == start_time
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as int?,
      end_time: freezed == end_time
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as int?,
      EF: freezed == EF
          ? _value.EF
          : EF // ignore: cast_nullable_to_non_nullable
              as double?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      checkNew: freezed == checkNew
          ? _value.checkNew
          : checkNew // ignore: cast_nullable_to_non_nullable
              as int?,
      lastChoice: freezed == lastChoice
          ? _value.lastChoice
          : lastChoice // ignore: cast_nullable_to_non_nullable
              as int?,
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int?,
      ease: freezed == ease
          ? _value.ease
          : ease // ignore: cast_nullable_to_non_nullable
              as double?,
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
  $Res call(
      {String? word,
      String? image,
      String? assets_image,
      String? mean,
      int? start_time,
      int? end_time,
      double? EF,
      int? id,
      int? checkNew,
      int? lastChoice,
      int? interval,
      double? ease});
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
    Object? word = freezed,
    Object? image = freezed,
    Object? assets_image = freezed,
    Object? mean = freezed,
    Object? start_time = freezed,
    Object? end_time = freezed,
    Object? EF = freezed,
    Object? id = freezed,
    Object? checkNew = freezed,
    Object? lastChoice = freezed,
    Object? interval = freezed,
    Object? ease = freezed,
  }) {
    return _then(_$WordsImpl(
      word: freezed == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      assets_image: freezed == assets_image
          ? _value.assets_image
          : assets_image // ignore: cast_nullable_to_non_nullable
              as String?,
      mean: freezed == mean
          ? _value.mean
          : mean // ignore: cast_nullable_to_non_nullable
              as String?,
      start_time: freezed == start_time
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as int?,
      end_time: freezed == end_time
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as int?,
      EF: freezed == EF
          ? _value.EF
          : EF // ignore: cast_nullable_to_non_nullable
              as double?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      checkNew: freezed == checkNew
          ? _value.checkNew
          : checkNew // ignore: cast_nullable_to_non_nullable
              as int?,
      lastChoice: freezed == lastChoice
          ? _value.lastChoice
          : lastChoice // ignore: cast_nullable_to_non_nullable
              as int?,
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int?,
      ease: freezed == ease
          ? _value.ease
          : ease // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WordsImpl implements _Words {
  const _$WordsImpl(
      {this.word,
      this.image,
      this.assets_image,
      this.mean,
      this.start_time,
      this.end_time,
      this.EF,
      this.id,
      this.checkNew,
      this.lastChoice,
      this.interval,
      this.ease});

  factory _$WordsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordsImplFromJson(json);

  @override
  final String? word;
  @override
  final String? image;
  @override
  final String? assets_image;
  @override
  final String? mean;
  @override
  final int? start_time;
  @override
  final int? end_time;
  @override
  final double? EF;
  @override
  final int? id;
  @override
  final int? checkNew;
  @override
  final int? lastChoice;
  @override
  final int? interval;
  @override
  final double? ease;

  @override
  String toString() {
    return 'Words(word: $word, image: $image, assets_image: $assets_image, mean: $mean, start_time: $start_time, end_time: $end_time, EF: $EF, id: $id, checkNew: $checkNew, lastChoice: $lastChoice, interval: $interval, ease: $ease)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordsImpl &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.assets_image, assets_image) ||
                other.assets_image == assets_image) &&
            (identical(other.mean, mean) || other.mean == mean) &&
            (identical(other.start_time, start_time) ||
                other.start_time == start_time) &&
            (identical(other.end_time, end_time) ||
                other.end_time == end_time) &&
            (identical(other.EF, EF) || other.EF == EF) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.checkNew, checkNew) ||
                other.checkNew == checkNew) &&
            (identical(other.lastChoice, lastChoice) ||
                other.lastChoice == lastChoice) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.ease, ease) || other.ease == ease));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, word, image, assets_image, mean,
      start_time, end_time, EF, id, checkNew, lastChoice, interval, ease);

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
      {final String? word,
      final String? image,
      final String? assets_image,
      final String? mean,
      final int? start_time,
      final int? end_time,
      final double? EF,
      final int? id,
      final int? checkNew,
      final int? lastChoice,
      final int? interval,
      final double? ease}) = _$WordsImpl;

  factory _Words.fromJson(Map<String, dynamic> json) = _$WordsImpl.fromJson;

  @override
  String? get word;
  @override
  String? get image;
  @override
  String? get assets_image;
  @override
  String? get mean;
  @override
  int? get start_time;
  @override
  int? get end_time;
  @override
  double? get EF;
  @override
  int? get id;
  @override
  int? get checkNew;
  @override
  int? get lastChoice;
  @override
  int? get interval;
  @override
  double? get ease;
  @override
  @JsonKey(ignore: true)
  _$$WordsImplCopyWith<_$WordsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
