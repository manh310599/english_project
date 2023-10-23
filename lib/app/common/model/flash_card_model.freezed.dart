// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flash_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlashCardModel _$FlashCardModelFromJson(Map<String, dynamic> json) {
  return _FlashCardModel.fromJson(json);
}

/// @nodoc
mixin _$FlashCardModel {
  FrontModel get front => throw _privateConstructorUsedError;
  BackModel get back => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlashCardModelCopyWith<FlashCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashCardModelCopyWith<$Res> {
  factory $FlashCardModelCopyWith(
          FlashCardModel value, $Res Function(FlashCardModel) then) =
      _$FlashCardModelCopyWithImpl<$Res, FlashCardModel>;
  @useResult
  $Res call({FrontModel front, BackModel back});

  $FrontModelCopyWith<$Res> get front;
  $BackModelCopyWith<$Res> get back;
}

/// @nodoc
class _$FlashCardModelCopyWithImpl<$Res, $Val extends FlashCardModel>
    implements $FlashCardModelCopyWith<$Res> {
  _$FlashCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? front = null,
    Object? back = null,
  }) {
    return _then(_value.copyWith(
      front: null == front
          ? _value.front
          : front // ignore: cast_nullable_to_non_nullable
              as FrontModel,
      back: null == back
          ? _value.back
          : back // ignore: cast_nullable_to_non_nullable
              as BackModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FrontModelCopyWith<$Res> get front {
    return $FrontModelCopyWith<$Res>(_value.front, (value) {
      return _then(_value.copyWith(front: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BackModelCopyWith<$Res> get back {
    return $BackModelCopyWith<$Res>(_value.back, (value) {
      return _then(_value.copyWith(back: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FlashCardModelImplCopyWith<$Res>
    implements $FlashCardModelCopyWith<$Res> {
  factory _$$FlashCardModelImplCopyWith(_$FlashCardModelImpl value,
          $Res Function(_$FlashCardModelImpl) then) =
      __$$FlashCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FrontModel front, BackModel back});

  @override
  $FrontModelCopyWith<$Res> get front;
  @override
  $BackModelCopyWith<$Res> get back;
}

/// @nodoc
class __$$FlashCardModelImplCopyWithImpl<$Res>
    extends _$FlashCardModelCopyWithImpl<$Res, _$FlashCardModelImpl>
    implements _$$FlashCardModelImplCopyWith<$Res> {
  __$$FlashCardModelImplCopyWithImpl(
      _$FlashCardModelImpl _value, $Res Function(_$FlashCardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? front = null,
    Object? back = null,
  }) {
    return _then(_$FlashCardModelImpl(
      front: null == front
          ? _value.front
          : front // ignore: cast_nullable_to_non_nullable
              as FrontModel,
      back: null == back
          ? _value.back
          : back // ignore: cast_nullable_to_non_nullable
              as BackModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlashCardModelImpl implements _FlashCardModel {
  const _$FlashCardModelImpl({required this.front, required this.back});

  factory _$FlashCardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlashCardModelImplFromJson(json);

  @override
  final FrontModel front;
  @override
  final BackModel back;

  @override
  String toString() {
    return 'FlashCardModel(front: $front, back: $back)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashCardModelImpl &&
            (identical(other.front, front) || other.front == front) &&
            (identical(other.back, back) || other.back == back));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, front, back);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashCardModelImplCopyWith<_$FlashCardModelImpl> get copyWith =>
      __$$FlashCardModelImplCopyWithImpl<_$FlashCardModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlashCardModelImplToJson(
      this,
    );
  }
}

abstract class _FlashCardModel implements FlashCardModel {
  const factory _FlashCardModel(
      {required final FrontModel front,
      required final BackModel back}) = _$FlashCardModelImpl;

  factory _FlashCardModel.fromJson(Map<String, dynamic> json) =
      _$FlashCardModelImpl.fromJson;

  @override
  FrontModel get front;
  @override
  BackModel get back;
  @override
  @JsonKey(ignore: true)
  _$$FlashCardModelImplCopyWith<_$FlashCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FrontModel _$FrontModelFromJson(Map<String, dynamic> json) {
  return _FrontModel.fromJson(json);
}

/// @nodoc
mixin _$FrontModel {
  String get vocabulary => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FrontModelCopyWith<FrontModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FrontModelCopyWith<$Res> {
  factory $FrontModelCopyWith(
          FrontModel value, $Res Function(FrontModel) then) =
      _$FrontModelCopyWithImpl<$Res, FrontModel>;
  @useResult
  $Res call({String vocabulary, String image});
}

/// @nodoc
class _$FrontModelCopyWithImpl<$Res, $Val extends FrontModel>
    implements $FrontModelCopyWith<$Res> {
  _$FrontModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vocabulary = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      vocabulary: null == vocabulary
          ? _value.vocabulary
          : vocabulary // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FrontModelImplCopyWith<$Res>
    implements $FrontModelCopyWith<$Res> {
  factory _$$FrontModelImplCopyWith(
          _$FrontModelImpl value, $Res Function(_$FrontModelImpl) then) =
      __$$FrontModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String vocabulary, String image});
}

/// @nodoc
class __$$FrontModelImplCopyWithImpl<$Res>
    extends _$FrontModelCopyWithImpl<$Res, _$FrontModelImpl>
    implements _$$FrontModelImplCopyWith<$Res> {
  __$$FrontModelImplCopyWithImpl(
      _$FrontModelImpl _value, $Res Function(_$FrontModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vocabulary = null,
    Object? image = null,
  }) {
    return _then(_$FrontModelImpl(
      vocabulary: null == vocabulary
          ? _value.vocabulary
          : vocabulary // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FrontModelImpl implements _FrontModel {
  const _$FrontModelImpl({required this.vocabulary, required this.image});

  factory _$FrontModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FrontModelImplFromJson(json);

  @override
  final String vocabulary;
  @override
  final String image;

  @override
  String toString() {
    return 'FrontModel(vocabulary: $vocabulary, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FrontModelImpl &&
            (identical(other.vocabulary, vocabulary) ||
                other.vocabulary == vocabulary) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, vocabulary, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FrontModelImplCopyWith<_$FrontModelImpl> get copyWith =>
      __$$FrontModelImplCopyWithImpl<_$FrontModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FrontModelImplToJson(
      this,
    );
  }
}

abstract class _FrontModel implements FrontModel {
  const factory _FrontModel(
      {required final String vocabulary,
      required final String image}) = _$FrontModelImpl;

  factory _FrontModel.fromJson(Map<String, dynamic> json) =
      _$FrontModelImpl.fromJson;

  @override
  String get vocabulary;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$FrontModelImplCopyWith<_$FrontModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BackModel _$BackModelFromJson(Map<String, dynamic> json) {
  return _BackModel.fromJson(json);
}

/// @nodoc
mixin _$BackModel {
  String get vocabulary => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get meaning => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BackModelCopyWith<BackModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackModelCopyWith<$Res> {
  factory $BackModelCopyWith(BackModel value, $Res Function(BackModel) then) =
      _$BackModelCopyWithImpl<$Res, BackModel>;
  @useResult
  $Res call({String vocabulary, String image, String meaning});
}

/// @nodoc
class _$BackModelCopyWithImpl<$Res, $Val extends BackModel>
    implements $BackModelCopyWith<$Res> {
  _$BackModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vocabulary = null,
    Object? image = null,
    Object? meaning = null,
  }) {
    return _then(_value.copyWith(
      vocabulary: null == vocabulary
          ? _value.vocabulary
          : vocabulary // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BackModelImplCopyWith<$Res>
    implements $BackModelCopyWith<$Res> {
  factory _$$BackModelImplCopyWith(
          _$BackModelImpl value, $Res Function(_$BackModelImpl) then) =
      __$$BackModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String vocabulary, String image, String meaning});
}

/// @nodoc
class __$$BackModelImplCopyWithImpl<$Res>
    extends _$BackModelCopyWithImpl<$Res, _$BackModelImpl>
    implements _$$BackModelImplCopyWith<$Res> {
  __$$BackModelImplCopyWithImpl(
      _$BackModelImpl _value, $Res Function(_$BackModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vocabulary = null,
    Object? image = null,
    Object? meaning = null,
  }) {
    return _then(_$BackModelImpl(
      vocabulary: null == vocabulary
          ? _value.vocabulary
          : vocabulary // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BackModelImpl implements _BackModel {
  const _$BackModelImpl(
      {required this.vocabulary, required this.image, required this.meaning});

  factory _$BackModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackModelImplFromJson(json);

  @override
  final String vocabulary;
  @override
  final String image;
  @override
  final String meaning;

  @override
  String toString() {
    return 'BackModel(vocabulary: $vocabulary, image: $image, meaning: $meaning)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackModelImpl &&
            (identical(other.vocabulary, vocabulary) ||
                other.vocabulary == vocabulary) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.meaning, meaning) || other.meaning == meaning));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, vocabulary, image, meaning);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BackModelImplCopyWith<_$BackModelImpl> get copyWith =>
      __$$BackModelImplCopyWithImpl<_$BackModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BackModelImplToJson(
      this,
    );
  }
}

abstract class _BackModel implements BackModel {
  const factory _BackModel(
      {required final String vocabulary,
      required final String image,
      required final String meaning}) = _$BackModelImpl;

  factory _BackModel.fromJson(Map<String, dynamic> json) =
      _$BackModelImpl.fromJson;

  @override
  String get vocabulary;
  @override
  String get image;
  @override
  String get meaning;
  @override
  @JsonKey(ignore: true)
  _$$BackModelImplCopyWith<_$BackModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
