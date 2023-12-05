// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_from_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageFromText _$ImageFromTextFromJson(Map<String, dynamic> json) {
  return _ImageFromText.fromJson(json);
}

/// @nodoc
mixin _$ImageFromText {
  int? get total => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  List<Result>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageFromTextCopyWith<ImageFromText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageFromTextCopyWith<$Res> {
  factory $ImageFromTextCopyWith(
          ImageFromText value, $Res Function(ImageFromText) then) =
      _$ImageFromTextCopyWithImpl<$Res, ImageFromText>;
  @useResult
  $Res call({int? total, int? totalPages, List<Result>? results});
}

/// @nodoc
class _$ImageFromTextCopyWithImpl<$Res, $Val extends ImageFromText>
    implements $ImageFromTextCopyWith<$Res> {
  _$ImageFromTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageFromTextImplCopyWith<$Res>
    implements $ImageFromTextCopyWith<$Res> {
  factory _$$ImageFromTextImplCopyWith(
          _$ImageFromTextImpl value, $Res Function(_$ImageFromTextImpl) then) =
      __$$ImageFromTextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? total, int? totalPages, List<Result>? results});
}

/// @nodoc
class __$$ImageFromTextImplCopyWithImpl<$Res>
    extends _$ImageFromTextCopyWithImpl<$Res, _$ImageFromTextImpl>
    implements _$$ImageFromTextImplCopyWith<$Res> {
  __$$ImageFromTextImplCopyWithImpl(
      _$ImageFromTextImpl _value, $Res Function(_$ImageFromTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? results = freezed,
  }) {
    return _then(_$ImageFromTextImpl(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageFromTextImpl implements _ImageFromText {
  const _$ImageFromTextImpl(
      {this.total, this.totalPages, final List<Result>? results})
      : _results = results;

  factory _$ImageFromTextImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageFromTextImplFromJson(json);

  @override
  final int? total;
  @override
  final int? totalPages;
  final List<Result>? _results;
  @override
  List<Result>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ImageFromText(total: $total, totalPages: $totalPages, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageFromTextImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, totalPages,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageFromTextImplCopyWith<_$ImageFromTextImpl> get copyWith =>
      __$$ImageFromTextImplCopyWithImpl<_$ImageFromTextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageFromTextImplToJson(
      this,
    );
  }
}

abstract class _ImageFromText implements ImageFromText {
  const factory _ImageFromText(
      {final int? total,
      final int? totalPages,
      final List<Result>? results}) = _$ImageFromTextImpl;

  factory _ImageFromText.fromJson(Map<String, dynamic> json) =
      _$ImageFromTextImpl.fromJson;

  @override
  int? get total;
  @override
  int? get totalPages;
  @override
  List<Result>? get results;
  @override
  @JsonKey(ignore: true)
  _$$ImageFromTextImplCopyWith<_$ImageFromTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  String? get id => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get promotedAt => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get blurHash => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get altDescription => throw _privateConstructorUsedError;
  List<Breadcrumb>? get breadcrumbs => throw _privateConstructorUsedError;
  Urls? get urls => throw _privateConstructorUsedError;
  ResultLinks? get links => throw _privateConstructorUsedError;
  int? get likes => throw _privateConstructorUsedError;
  bool? get likedByUser => throw _privateConstructorUsedError;
  List<String?>? get currentUserCollections =>
      throw _privateConstructorUsedError;
  TopicSubmissions? get topicSubmissions => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  List<Tag>? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {String? id,
      String? slug,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? promotedAt,
      int? width,
      int? height,
      String? color,
      String? blurHash,
      String? description,
      String? altDescription,
      List<Breadcrumb>? breadcrumbs,
      Urls? urls,
      ResultLinks? links,
      int? likes,
      bool? likedByUser,
      List<String?>? currentUserCollections,
      TopicSubmissions? topicSubmissions,
      User? user,
      List<Tag>? tags});

  $UrlsCopyWith<$Res>? get urls;
  $ResultLinksCopyWith<$Res>? get links;
  $TopicSubmissionsCopyWith<$Res>? get topicSubmissions;
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? slug = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? promotedAt = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? color = freezed,
    Object? blurHash = freezed,
    Object? description = freezed,
    Object? altDescription = freezed,
    Object? breadcrumbs = freezed,
    Object? urls = freezed,
    Object? links = freezed,
    Object? likes = freezed,
    Object? likedByUser = freezed,
    Object? currentUserCollections = freezed,
    Object? topicSubmissions = freezed,
    Object? user = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      promotedAt: freezed == promotedAt
          ? _value.promotedAt
          : promotedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      blurHash: freezed == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      altDescription: freezed == altDescription
          ? _value.altDescription
          : altDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      breadcrumbs: freezed == breadcrumbs
          ? _value.breadcrumbs
          : breadcrumbs // ignore: cast_nullable_to_non_nullable
              as List<Breadcrumb>?,
      urls: freezed == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Urls?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as ResultLinks?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      likedByUser: freezed == likedByUser
          ? _value.likedByUser
          : likedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentUserCollections: freezed == currentUserCollections
          ? _value.currentUserCollections
          : currentUserCollections // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      topicSubmissions: freezed == topicSubmissions
          ? _value.topicSubmissions
          : topicSubmissions // ignore: cast_nullable_to_non_nullable
              as TopicSubmissions?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UrlsCopyWith<$Res>? get urls {
    if (_value.urls == null) {
      return null;
    }

    return $UrlsCopyWith<$Res>(_value.urls!, (value) {
      return _then(_value.copyWith(urls: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultLinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $ResultLinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TopicSubmissionsCopyWith<$Res>? get topicSubmissions {
    if (_value.topicSubmissions == null) {
      return null;
    }

    return $TopicSubmissionsCopyWith<$Res>(_value.topicSubmissions!, (value) {
      return _then(_value.copyWith(topicSubmissions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? slug,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? promotedAt,
      int? width,
      int? height,
      String? color,
      String? blurHash,
      String? description,
      String? altDescription,
      List<Breadcrumb>? breadcrumbs,
      Urls? urls,
      ResultLinks? links,
      int? likes,
      bool? likedByUser,
      List<String?>? currentUserCollections,
      TopicSubmissions? topicSubmissions,
      User? user,
      List<Tag>? tags});

  @override
  $UrlsCopyWith<$Res>? get urls;
  @override
  $ResultLinksCopyWith<$Res>? get links;
  @override
  $TopicSubmissionsCopyWith<$Res>? get topicSubmissions;
  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? slug = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? promotedAt = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? color = freezed,
    Object? blurHash = freezed,
    Object? description = freezed,
    Object? altDescription = freezed,
    Object? breadcrumbs = freezed,
    Object? urls = freezed,
    Object? links = freezed,
    Object? likes = freezed,
    Object? likedByUser = freezed,
    Object? currentUserCollections = freezed,
    Object? topicSubmissions = freezed,
    Object? user = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$ResultImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      promotedAt: freezed == promotedAt
          ? _value.promotedAt
          : promotedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      blurHash: freezed == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      altDescription: freezed == altDescription
          ? _value.altDescription
          : altDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      breadcrumbs: freezed == breadcrumbs
          ? _value._breadcrumbs
          : breadcrumbs // ignore: cast_nullable_to_non_nullable
              as List<Breadcrumb>?,
      urls: freezed == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Urls?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as ResultLinks?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      likedByUser: freezed == likedByUser
          ? _value.likedByUser
          : likedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentUserCollections: freezed == currentUserCollections
          ? _value._currentUserCollections
          : currentUserCollections // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      topicSubmissions: freezed == topicSubmissions
          ? _value.topicSubmissions
          : topicSubmissions // ignore: cast_nullable_to_non_nullable
              as TopicSubmissions?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {this.id,
      this.slug,
      this.createdAt,
      this.updatedAt,
      this.promotedAt,
      this.width,
      this.height,
      this.color,
      this.blurHash,
      this.description,
      this.altDescription,
      final List<Breadcrumb>? breadcrumbs,
      this.urls,
      this.links,
      this.likes,
      this.likedByUser,
      final List<String?>? currentUserCollections,
      this.topicSubmissions,
      this.user,
      final List<Tag>? tags})
      : _breadcrumbs = breadcrumbs,
        _currentUserCollections = currentUserCollections,
        _tags = tags;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final String? id;
  @override
  final String? slug;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? promotedAt;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final String? color;
  @override
  final String? blurHash;
  @override
  final String? description;
  @override
  final String? altDescription;
  final List<Breadcrumb>? _breadcrumbs;
  @override
  List<Breadcrumb>? get breadcrumbs {
    final value = _breadcrumbs;
    if (value == null) return null;
    if (_breadcrumbs is EqualUnmodifiableListView) return _breadcrumbs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Urls? urls;
  @override
  final ResultLinks? links;
  @override
  final int? likes;
  @override
  final bool? likedByUser;
  final List<String?>? _currentUserCollections;
  @override
  List<String?>? get currentUserCollections {
    final value = _currentUserCollections;
    if (value == null) return null;
    if (_currentUserCollections is EqualUnmodifiableListView)
      return _currentUserCollections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final TopicSubmissions? topicSubmissions;
  @override
  final User? user;
  final List<Tag>? _tags;
  @override
  List<Tag>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(id: $id, slug: $slug, createdAt: $createdAt, updatedAt: $updatedAt, promotedAt: $promotedAt, width: $width, height: $height, color: $color, blurHash: $blurHash, description: $description, altDescription: $altDescription, breadcrumbs: $breadcrumbs, urls: $urls, links: $links, likes: $likes, likedByUser: $likedByUser, currentUserCollections: $currentUserCollections, topicSubmissions: $topicSubmissions, user: $user, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.promotedAt, promotedAt) ||
                other.promotedAt == promotedAt) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.blurHash, blurHash) ||
                other.blurHash == blurHash) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.altDescription, altDescription) ||
                other.altDescription == altDescription) &&
            const DeepCollectionEquality()
                .equals(other._breadcrumbs, _breadcrumbs) &&
            (identical(other.urls, urls) || other.urls == urls) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.likedByUser, likedByUser) ||
                other.likedByUser == likedByUser) &&
            const DeepCollectionEquality().equals(
                other._currentUserCollections, _currentUserCollections) &&
            (identical(other.topicSubmissions, topicSubmissions) ||
                other.topicSubmissions == topicSubmissions) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        slug,
        createdAt,
        updatedAt,
        promotedAt,
        width,
        height,
        color,
        blurHash,
        description,
        altDescription,
        const DeepCollectionEquality().hash(_breadcrumbs),
        urls,
        links,
        likes,
        likedByUser,
        const DeepCollectionEquality().hash(_currentUserCollections),
        topicSubmissions,
        user,
        const DeepCollectionEquality().hash(_tags)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final String? id,
      final String? slug,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final DateTime? promotedAt,
      final int? width,
      final int? height,
      final String? color,
      final String? blurHash,
      final String? description,
      final String? altDescription,
      final List<Breadcrumb>? breadcrumbs,
      final Urls? urls,
      final ResultLinks? links,
      final int? likes,
      final bool? likedByUser,
      final List<String?>? currentUserCollections,
      final TopicSubmissions? topicSubmissions,
      final User? user,
      final List<Tag>? tags}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  String? get id;
  @override
  String? get slug;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get promotedAt;
  @override
  int? get width;
  @override
  int? get height;
  @override
  String? get color;
  @override
  String? get blurHash;
  @override
  String? get description;
  @override
  String? get altDescription;
  @override
  List<Breadcrumb>? get breadcrumbs;
  @override
  Urls? get urls;
  @override
  ResultLinks? get links;
  @override
  int? get likes;
  @override
  bool? get likedByUser;
  @override
  List<String?>? get currentUserCollections;
  @override
  TopicSubmissions? get topicSubmissions;
  @override
  User? get user;
  @override
  List<Tag>? get tags;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Breadcrumb _$BreadcrumbFromJson(Map<String, dynamic> json) {
  return _Breadcrumb.fromJson(json);
}

/// @nodoc
mixin _$Breadcrumb {
  String? get slug => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BreadcrumbCopyWith<Breadcrumb> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreadcrumbCopyWith<$Res> {
  factory $BreadcrumbCopyWith(
          Breadcrumb value, $Res Function(Breadcrumb) then) =
      _$BreadcrumbCopyWithImpl<$Res, Breadcrumb>;
  @useResult
  $Res call({String? slug, String? title, int? index, String? type});
}

/// @nodoc
class _$BreadcrumbCopyWithImpl<$Res, $Val extends Breadcrumb>
    implements $BreadcrumbCopyWith<$Res> {
  _$BreadcrumbCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = freezed,
    Object? title = freezed,
    Object? index = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BreadcrumbImplCopyWith<$Res>
    implements $BreadcrumbCopyWith<$Res> {
  factory _$$BreadcrumbImplCopyWith(
          _$BreadcrumbImpl value, $Res Function(_$BreadcrumbImpl) then) =
      __$$BreadcrumbImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? slug, String? title, int? index, String? type});
}

/// @nodoc
class __$$BreadcrumbImplCopyWithImpl<$Res>
    extends _$BreadcrumbCopyWithImpl<$Res, _$BreadcrumbImpl>
    implements _$$BreadcrumbImplCopyWith<$Res> {
  __$$BreadcrumbImplCopyWithImpl(
      _$BreadcrumbImpl _value, $Res Function(_$BreadcrumbImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = freezed,
    Object? title = freezed,
    Object? index = freezed,
    Object? type = freezed,
  }) {
    return _then(_$BreadcrumbImpl(
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BreadcrumbImpl implements _Breadcrumb {
  const _$BreadcrumbImpl({this.slug, this.title, this.index, this.type});

  factory _$BreadcrumbImpl.fromJson(Map<String, dynamic> json) =>
      _$$BreadcrumbImplFromJson(json);

  @override
  final String? slug;
  @override
  final String? title;
  @override
  final int? index;
  @override
  final String? type;

  @override
  String toString() {
    return 'Breadcrumb(slug: $slug, title: $title, index: $index, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreadcrumbImpl &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slug, title, index, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BreadcrumbImplCopyWith<_$BreadcrumbImpl> get copyWith =>
      __$$BreadcrumbImplCopyWithImpl<_$BreadcrumbImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BreadcrumbImplToJson(
      this,
    );
  }
}

abstract class _Breadcrumb implements Breadcrumb {
  const factory _Breadcrumb(
      {final String? slug,
      final String? title,
      final int? index,
      final String? type}) = _$BreadcrumbImpl;

  factory _Breadcrumb.fromJson(Map<String, dynamic> json) =
      _$BreadcrumbImpl.fromJson;

  @override
  String? get slug;
  @override
  String? get title;
  @override
  int? get index;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$BreadcrumbImplCopyWith<_$BreadcrumbImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultLinks _$ResultLinksFromJson(Map<String, dynamic> json) {
  return _ResultLinks.fromJson(json);
}

/// @nodoc
mixin _$ResultLinks {
  String? get self => throw _privateConstructorUsedError;
  String? get html => throw _privateConstructorUsedError;
  String? get download => throw _privateConstructorUsedError;
  String? get downloadLocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultLinksCopyWith<ResultLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultLinksCopyWith<$Res> {
  factory $ResultLinksCopyWith(
          ResultLinks value, $Res Function(ResultLinks) then) =
      _$ResultLinksCopyWithImpl<$Res, ResultLinks>;
  @useResult
  $Res call(
      {String? self, String? html, String? download, String? downloadLocation});
}

/// @nodoc
class _$ResultLinksCopyWithImpl<$Res, $Val extends ResultLinks>
    implements $ResultLinksCopyWith<$Res> {
  _$ResultLinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = freezed,
    Object? html = freezed,
    Object? download = freezed,
    Object? downloadLocation = freezed,
  }) {
    return _then(_value.copyWith(
      self: freezed == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String?,
      html: freezed == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String?,
      download: freezed == download
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadLocation: freezed == downloadLocation
          ? _value.downloadLocation
          : downloadLocation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultLinksImplCopyWith<$Res>
    implements $ResultLinksCopyWith<$Res> {
  factory _$$ResultLinksImplCopyWith(
          _$ResultLinksImpl value, $Res Function(_$ResultLinksImpl) then) =
      __$$ResultLinksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? self, String? html, String? download, String? downloadLocation});
}

/// @nodoc
class __$$ResultLinksImplCopyWithImpl<$Res>
    extends _$ResultLinksCopyWithImpl<$Res, _$ResultLinksImpl>
    implements _$$ResultLinksImplCopyWith<$Res> {
  __$$ResultLinksImplCopyWithImpl(
      _$ResultLinksImpl _value, $Res Function(_$ResultLinksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = freezed,
    Object? html = freezed,
    Object? download = freezed,
    Object? downloadLocation = freezed,
  }) {
    return _then(_$ResultLinksImpl(
      self: freezed == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String?,
      html: freezed == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String?,
      download: freezed == download
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadLocation: freezed == downloadLocation
          ? _value.downloadLocation
          : downloadLocation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultLinksImpl implements _ResultLinks {
  const _$ResultLinksImpl(
      {this.self, this.html, this.download, this.downloadLocation});

  factory _$ResultLinksImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultLinksImplFromJson(json);

  @override
  final String? self;
  @override
  final String? html;
  @override
  final String? download;
  @override
  final String? downloadLocation;

  @override
  String toString() {
    return 'ResultLinks(self: $self, html: $html, download: $download, downloadLocation: $downloadLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultLinksImpl &&
            (identical(other.self, self) || other.self == self) &&
            (identical(other.html, html) || other.html == html) &&
            (identical(other.download, download) ||
                other.download == download) &&
            (identical(other.downloadLocation, downloadLocation) ||
                other.downloadLocation == downloadLocation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, self, html, download, downloadLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultLinksImplCopyWith<_$ResultLinksImpl> get copyWith =>
      __$$ResultLinksImplCopyWithImpl<_$ResultLinksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultLinksImplToJson(
      this,
    );
  }
}

abstract class _ResultLinks implements ResultLinks {
  const factory _ResultLinks(
      {final String? self,
      final String? html,
      final String? download,
      final String? downloadLocation}) = _$ResultLinksImpl;

  factory _ResultLinks.fromJson(Map<String, dynamic> json) =
      _$ResultLinksImpl.fromJson;

  @override
  String? get self;
  @override
  String? get html;
  @override
  String? get download;
  @override
  String? get downloadLocation;
  @override
  @JsonKey(ignore: true)
  _$$ResultLinksImplCopyWith<_$ResultLinksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Tag _$TagFromJson(Map<String, dynamic> json) {
  return _Tag.fromJson(json);
}

/// @nodoc
mixin _$Tag {
  String? get type => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  Source? get source => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagCopyWith<Tag> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagCopyWith<$Res> {
  factory $TagCopyWith(Tag value, $Res Function(Tag) then) =
      _$TagCopyWithImpl<$Res, Tag>;
  @useResult
  $Res call({String? type, String? title, Source? source});

  $SourceCopyWith<$Res>? get source;
}

/// @nodoc
class _$TagCopyWithImpl<$Res, $Val extends Tag> implements $TagCopyWith<$Res> {
  _$TagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? title = freezed,
    Object? source = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SourceCopyWith<$Res>? get source {
    if (_value.source == null) {
      return null;
    }

    return $SourceCopyWith<$Res>(_value.source!, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TagImplCopyWith<$Res> implements $TagCopyWith<$Res> {
  factory _$$TagImplCopyWith(_$TagImpl value, $Res Function(_$TagImpl) then) =
      __$$TagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, String? title, Source? source});

  @override
  $SourceCopyWith<$Res>? get source;
}

/// @nodoc
class __$$TagImplCopyWithImpl<$Res> extends _$TagCopyWithImpl<$Res, _$TagImpl>
    implements _$$TagImplCopyWith<$Res> {
  __$$TagImplCopyWithImpl(_$TagImpl _value, $Res Function(_$TagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? title = freezed,
    Object? source = freezed,
  }) {
    return _then(_$TagImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TagImpl implements _Tag {
  const _$TagImpl({this.type, this.title, this.source});

  factory _$TagImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagImplFromJson(json);

  @override
  final String? type;
  @override
  final String? title;
  @override
  final Source? source;

  @override
  String toString() {
    return 'Tag(type: $type, title: $title, source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, title, source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagImplCopyWith<_$TagImpl> get copyWith =>
      __$$TagImplCopyWithImpl<_$TagImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagImplToJson(
      this,
    );
  }
}

abstract class _Tag implements Tag {
  const factory _Tag(
      {final String? type,
      final String? title,
      final Source? source}) = _$TagImpl;

  factory _Tag.fromJson(Map<String, dynamic> json) = _$TagImpl.fromJson;

  @override
  String? get type;
  @override
  String? get title;
  @override
  Source? get source;
  @override
  @JsonKey(ignore: true)
  _$$TagImplCopyWith<_$TagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Source _$SourceFromJson(Map<String, dynamic> json) {
  return _Source.fromJson(json);
}

/// @nodoc
mixin _$Source {
  Ancestry? get ancestry => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get metaTitle => throw _privateConstructorUsedError;
  String? get metaDescription => throw _privateConstructorUsedError;
  CoverPhoto? get coverPhoto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourceCopyWith<Source> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceCopyWith<$Res> {
  factory $SourceCopyWith(Source value, $Res Function(Source) then) =
      _$SourceCopyWithImpl<$Res, Source>;
  @useResult
  $Res call(
      {Ancestry? ancestry,
      String? title,
      String? subtitle,
      String? description,
      String? metaTitle,
      String? metaDescription,
      CoverPhoto? coverPhoto});

  $AncestryCopyWith<$Res>? get ancestry;
  $CoverPhotoCopyWith<$Res>? get coverPhoto;
}

/// @nodoc
class _$SourceCopyWithImpl<$Res, $Val extends Source>
    implements $SourceCopyWith<$Res> {
  _$SourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ancestry = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? description = freezed,
    Object? metaTitle = freezed,
    Object? metaDescription = freezed,
    Object? coverPhoto = freezed,
  }) {
    return _then(_value.copyWith(
      ancestry: freezed == ancestry
          ? _value.ancestry
          : ancestry // ignore: cast_nullable_to_non_nullable
              as Ancestry?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      metaTitle: freezed == metaTitle
          ? _value.metaTitle
          : metaTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      metaDescription: freezed == metaDescription
          ? _value.metaDescription
          : metaDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhoto: freezed == coverPhoto
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as CoverPhoto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AncestryCopyWith<$Res>? get ancestry {
    if (_value.ancestry == null) {
      return null;
    }

    return $AncestryCopyWith<$Res>(_value.ancestry!, (value) {
      return _then(_value.copyWith(ancestry: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CoverPhotoCopyWith<$Res>? get coverPhoto {
    if (_value.coverPhoto == null) {
      return null;
    }

    return $CoverPhotoCopyWith<$Res>(_value.coverPhoto!, (value) {
      return _then(_value.copyWith(coverPhoto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SourceImplCopyWith<$Res> implements $SourceCopyWith<$Res> {
  factory _$$SourceImplCopyWith(
          _$SourceImpl value, $Res Function(_$SourceImpl) then) =
      __$$SourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Ancestry? ancestry,
      String? title,
      String? subtitle,
      String? description,
      String? metaTitle,
      String? metaDescription,
      CoverPhoto? coverPhoto});

  @override
  $AncestryCopyWith<$Res>? get ancestry;
  @override
  $CoverPhotoCopyWith<$Res>? get coverPhoto;
}

/// @nodoc
class __$$SourceImplCopyWithImpl<$Res>
    extends _$SourceCopyWithImpl<$Res, _$SourceImpl>
    implements _$$SourceImplCopyWith<$Res> {
  __$$SourceImplCopyWithImpl(
      _$SourceImpl _value, $Res Function(_$SourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ancestry = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? description = freezed,
    Object? metaTitle = freezed,
    Object? metaDescription = freezed,
    Object? coverPhoto = freezed,
  }) {
    return _then(_$SourceImpl(
      ancestry: freezed == ancestry
          ? _value.ancestry
          : ancestry // ignore: cast_nullable_to_non_nullable
              as Ancestry?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      metaTitle: freezed == metaTitle
          ? _value.metaTitle
          : metaTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      metaDescription: freezed == metaDescription
          ? _value.metaDescription
          : metaDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhoto: freezed == coverPhoto
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as CoverPhoto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SourceImpl implements _Source {
  const _$SourceImpl(
      {this.ancestry,
      this.title,
      this.subtitle,
      this.description,
      this.metaTitle,
      this.metaDescription,
      this.coverPhoto});

  factory _$SourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceImplFromJson(json);

  @override
  final Ancestry? ancestry;
  @override
  final String? title;
  @override
  final String? subtitle;
  @override
  final String? description;
  @override
  final String? metaTitle;
  @override
  final String? metaDescription;
  @override
  final CoverPhoto? coverPhoto;

  @override
  String toString() {
    return 'Source(ancestry: $ancestry, title: $title, subtitle: $subtitle, description: $description, metaTitle: $metaTitle, metaDescription: $metaDescription, coverPhoto: $coverPhoto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceImpl &&
            (identical(other.ancestry, ancestry) ||
                other.ancestry == ancestry) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.metaTitle, metaTitle) ||
                other.metaTitle == metaTitle) &&
            (identical(other.metaDescription, metaDescription) ||
                other.metaDescription == metaDescription) &&
            (identical(other.coverPhoto, coverPhoto) ||
                other.coverPhoto == coverPhoto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ancestry, title, subtitle,
      description, metaTitle, metaDescription, coverPhoto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceImplCopyWith<_$SourceImpl> get copyWith =>
      __$$SourceImplCopyWithImpl<_$SourceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceImplToJson(
      this,
    );
  }
}

abstract class _Source implements Source {
  const factory _Source(
      {final Ancestry? ancestry,
      final String? title,
      final String? subtitle,
      final String? description,
      final String? metaTitle,
      final String? metaDescription,
      final CoverPhoto? coverPhoto}) = _$SourceImpl;

  factory _Source.fromJson(Map<String, dynamic> json) = _$SourceImpl.fromJson;

  @override
  Ancestry? get ancestry;
  @override
  String? get title;
  @override
  String? get subtitle;
  @override
  String? get description;
  @override
  String? get metaTitle;
  @override
  String? get metaDescription;
  @override
  CoverPhoto? get coverPhoto;
  @override
  @JsonKey(ignore: true)
  _$$SourceImplCopyWith<_$SourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ancestry _$AncestryFromJson(Map<String, dynamic> json) {
  return _Ancestry.fromJson(json);
}

/// @nodoc
mixin _$Ancestry {
  Category? get type => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;
  Category? get subcategory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AncestryCopyWith<Ancestry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AncestryCopyWith<$Res> {
  factory $AncestryCopyWith(Ancestry value, $Res Function(Ancestry) then) =
      _$AncestryCopyWithImpl<$Res, Ancestry>;
  @useResult
  $Res call({Category? type, Category? category, Category? subcategory});

  $CategoryCopyWith<$Res>? get type;
  $CategoryCopyWith<$Res>? get category;
  $CategoryCopyWith<$Res>? get subcategory;
}

/// @nodoc
class _$AncestryCopyWithImpl<$Res, $Val extends Ancestry>
    implements $AncestryCopyWith<$Res> {
  _$AncestryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? category = freezed,
    Object? subcategory = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Category?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      subcategory: freezed == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as Category?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get subcategory {
    if (_value.subcategory == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.subcategory!, (value) {
      return _then(_value.copyWith(subcategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AncestryImplCopyWith<$Res>
    implements $AncestryCopyWith<$Res> {
  factory _$$AncestryImplCopyWith(
          _$AncestryImpl value, $Res Function(_$AncestryImpl) then) =
      __$$AncestryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Category? type, Category? category, Category? subcategory});

  @override
  $CategoryCopyWith<$Res>? get type;
  @override
  $CategoryCopyWith<$Res>? get category;
  @override
  $CategoryCopyWith<$Res>? get subcategory;
}

/// @nodoc
class __$$AncestryImplCopyWithImpl<$Res>
    extends _$AncestryCopyWithImpl<$Res, _$AncestryImpl>
    implements _$$AncestryImplCopyWith<$Res> {
  __$$AncestryImplCopyWithImpl(
      _$AncestryImpl _value, $Res Function(_$AncestryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? category = freezed,
    Object? subcategory = freezed,
  }) {
    return _then(_$AncestryImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Category?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      subcategory: freezed == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as Category?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AncestryImpl implements _Ancestry {
  const _$AncestryImpl({this.type, this.category, this.subcategory});

  factory _$AncestryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AncestryImplFromJson(json);

  @override
  final Category? type;
  @override
  final Category? category;
  @override
  final Category? subcategory;

  @override
  String toString() {
    return 'Ancestry(type: $type, category: $category, subcategory: $subcategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AncestryImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subcategory, subcategory) ||
                other.subcategory == subcategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, category, subcategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AncestryImplCopyWith<_$AncestryImpl> get copyWith =>
      __$$AncestryImplCopyWithImpl<_$AncestryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AncestryImplToJson(
      this,
    );
  }
}

abstract class _Ancestry implements Ancestry {
  const factory _Ancestry(
      {final Category? type,
      final Category? category,
      final Category? subcategory}) = _$AncestryImpl;

  factory _Ancestry.fromJson(Map<String, dynamic> json) =
      _$AncestryImpl.fromJson;

  @override
  Category? get type;
  @override
  Category? get category;
  @override
  Category? get subcategory;
  @override
  @JsonKey(ignore: true)
  _$$AncestryImplCopyWith<_$AncestryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String? get slug => throw _privateConstructorUsedError;
  String? get prettySlug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call({String? slug, String? prettySlug});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = freezed,
    Object? prettySlug = freezed,
  }) {
    return _then(_value.copyWith(
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      prettySlug: freezed == prettySlug
          ? _value.prettySlug
          : prettySlug // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? slug, String? prettySlug});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = freezed,
    Object? prettySlug = freezed,
  }) {
    return _then(_$CategoryImpl(
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      prettySlug: freezed == prettySlug
          ? _value.prettySlug
          : prettySlug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl({this.slug, this.prettySlug});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  final String? slug;
  @override
  final String? prettySlug;

  @override
  String toString() {
    return 'Category(slug: $slug, prettySlug: $prettySlug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.prettySlug, prettySlug) ||
                other.prettySlug == prettySlug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slug, prettySlug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category({final String? slug, final String? prettySlug}) =
      _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  String? get slug;
  @override
  String? get prettySlug;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoverPhoto _$CoverPhotoFromJson(Map<String, dynamic> json) {
  return _CoverPhoto.fromJson(json);
}

/// @nodoc
mixin _$CoverPhoto {
  String? get id => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get promotedAt => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get blurHash => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get altDescription => throw _privateConstructorUsedError;
  List<String?>? get breadcrumbs => throw _privateConstructorUsedError;
  Urls? get urls => throw _privateConstructorUsedError;
  ResultLinks? get links => throw _privateConstructorUsedError;
  int? get likes => throw _privateConstructorUsedError;
  bool? get likedByUser => throw _privateConstructorUsedError;
  List<String?>? get currentUserCollections =>
      throw _privateConstructorUsedError;
  String? get sponsorship => throw _privateConstructorUsedError;
  TopicSubmissions? get topicSubmissions => throw _privateConstructorUsedError;
  bool? get premium => throw _privateConstructorUsedError;
  bool? get plus => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverPhotoCopyWith<CoverPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverPhotoCopyWith<$Res> {
  factory $CoverPhotoCopyWith(
          CoverPhoto value, $Res Function(CoverPhoto) then) =
      _$CoverPhotoCopyWithImpl<$Res, CoverPhoto>;
  @useResult
  $Res call(
      {String? id,
      String? slug,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? promotedAt,
      int? width,
      int? height,
      String? color,
      String? blurHash,
      String? description,
      String? altDescription,
      List<String?>? breadcrumbs,
      Urls? urls,
      ResultLinks? links,
      int? likes,
      bool? likedByUser,
      List<String?>? currentUserCollections,
      String? sponsorship,
      TopicSubmissions? topicSubmissions,
      bool? premium,
      bool? plus,
      User? user});

  $UrlsCopyWith<$Res>? get urls;
  $ResultLinksCopyWith<$Res>? get links;
  $TopicSubmissionsCopyWith<$Res>? get topicSubmissions;
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$CoverPhotoCopyWithImpl<$Res, $Val extends CoverPhoto>
    implements $CoverPhotoCopyWith<$Res> {
  _$CoverPhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? slug = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? promotedAt = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? color = freezed,
    Object? blurHash = freezed,
    Object? description = freezed,
    Object? altDescription = freezed,
    Object? breadcrumbs = freezed,
    Object? urls = freezed,
    Object? links = freezed,
    Object? likes = freezed,
    Object? likedByUser = freezed,
    Object? currentUserCollections = freezed,
    Object? sponsorship = freezed,
    Object? topicSubmissions = freezed,
    Object? premium = freezed,
    Object? plus = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      promotedAt: freezed == promotedAt
          ? _value.promotedAt
          : promotedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      blurHash: freezed == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      altDescription: freezed == altDescription
          ? _value.altDescription
          : altDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      breadcrumbs: freezed == breadcrumbs
          ? _value.breadcrumbs
          : breadcrumbs // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      urls: freezed == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Urls?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as ResultLinks?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      likedByUser: freezed == likedByUser
          ? _value.likedByUser
          : likedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentUserCollections: freezed == currentUserCollections
          ? _value.currentUserCollections
          : currentUserCollections // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      sponsorship: freezed == sponsorship
          ? _value.sponsorship
          : sponsorship // ignore: cast_nullable_to_non_nullable
              as String?,
      topicSubmissions: freezed == topicSubmissions
          ? _value.topicSubmissions
          : topicSubmissions // ignore: cast_nullable_to_non_nullable
              as TopicSubmissions?,
      premium: freezed == premium
          ? _value.premium
          : premium // ignore: cast_nullable_to_non_nullable
              as bool?,
      plus: freezed == plus
          ? _value.plus
          : plus // ignore: cast_nullable_to_non_nullable
              as bool?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UrlsCopyWith<$Res>? get urls {
    if (_value.urls == null) {
      return null;
    }

    return $UrlsCopyWith<$Res>(_value.urls!, (value) {
      return _then(_value.copyWith(urls: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultLinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $ResultLinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TopicSubmissionsCopyWith<$Res>? get topicSubmissions {
    if (_value.topicSubmissions == null) {
      return null;
    }

    return $TopicSubmissionsCopyWith<$Res>(_value.topicSubmissions!, (value) {
      return _then(_value.copyWith(topicSubmissions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoverPhotoImplCopyWith<$Res>
    implements $CoverPhotoCopyWith<$Res> {
  factory _$$CoverPhotoImplCopyWith(
          _$CoverPhotoImpl value, $Res Function(_$CoverPhotoImpl) then) =
      __$$CoverPhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? slug,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? promotedAt,
      int? width,
      int? height,
      String? color,
      String? blurHash,
      String? description,
      String? altDescription,
      List<String?>? breadcrumbs,
      Urls? urls,
      ResultLinks? links,
      int? likes,
      bool? likedByUser,
      List<String?>? currentUserCollections,
      String? sponsorship,
      TopicSubmissions? topicSubmissions,
      bool? premium,
      bool? plus,
      User? user});

  @override
  $UrlsCopyWith<$Res>? get urls;
  @override
  $ResultLinksCopyWith<$Res>? get links;
  @override
  $TopicSubmissionsCopyWith<$Res>? get topicSubmissions;
  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$CoverPhotoImplCopyWithImpl<$Res>
    extends _$CoverPhotoCopyWithImpl<$Res, _$CoverPhotoImpl>
    implements _$$CoverPhotoImplCopyWith<$Res> {
  __$$CoverPhotoImplCopyWithImpl(
      _$CoverPhotoImpl _value, $Res Function(_$CoverPhotoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? slug = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? promotedAt = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? color = freezed,
    Object? blurHash = freezed,
    Object? description = freezed,
    Object? altDescription = freezed,
    Object? breadcrumbs = freezed,
    Object? urls = freezed,
    Object? links = freezed,
    Object? likes = freezed,
    Object? likedByUser = freezed,
    Object? currentUserCollections = freezed,
    Object? sponsorship = freezed,
    Object? topicSubmissions = freezed,
    Object? premium = freezed,
    Object? plus = freezed,
    Object? user = freezed,
  }) {
    return _then(_$CoverPhotoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      promotedAt: freezed == promotedAt
          ? _value.promotedAt
          : promotedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      blurHash: freezed == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      altDescription: freezed == altDescription
          ? _value.altDescription
          : altDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      breadcrumbs: freezed == breadcrumbs
          ? _value._breadcrumbs
          : breadcrumbs // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      urls: freezed == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Urls?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as ResultLinks?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      likedByUser: freezed == likedByUser
          ? _value.likedByUser
          : likedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentUserCollections: freezed == currentUserCollections
          ? _value._currentUserCollections
          : currentUserCollections // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      sponsorship: freezed == sponsorship
          ? _value.sponsorship
          : sponsorship // ignore: cast_nullable_to_non_nullable
              as String?,
      topicSubmissions: freezed == topicSubmissions
          ? _value.topicSubmissions
          : topicSubmissions // ignore: cast_nullable_to_non_nullable
              as TopicSubmissions?,
      premium: freezed == premium
          ? _value.premium
          : premium // ignore: cast_nullable_to_non_nullable
              as bool?,
      plus: freezed == plus
          ? _value.plus
          : plus // ignore: cast_nullable_to_non_nullable
              as bool?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoverPhotoImpl implements _CoverPhoto {
  const _$CoverPhotoImpl(
      {this.id,
      this.slug,
      this.createdAt,
      this.updatedAt,
      this.promotedAt,
      this.width,
      this.height,
      this.color,
      this.blurHash,
      this.description,
      this.altDescription,
      final List<String?>? breadcrumbs,
      this.urls,
      this.links,
      this.likes,
      this.likedByUser,
      final List<String?>? currentUserCollections,
      this.sponsorship,
      this.topicSubmissions,
      this.premium,
      this.plus,
      this.user})
      : _breadcrumbs = breadcrumbs,
        _currentUserCollections = currentUserCollections;

  factory _$CoverPhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoverPhotoImplFromJson(json);

  @override
  final String? id;
  @override
  final String? slug;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? promotedAt;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final String? color;
  @override
  final String? blurHash;
  @override
  final String? description;
  @override
  final String? altDescription;
  final List<String?>? _breadcrumbs;
  @override
  List<String?>? get breadcrumbs {
    final value = _breadcrumbs;
    if (value == null) return null;
    if (_breadcrumbs is EqualUnmodifiableListView) return _breadcrumbs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Urls? urls;
  @override
  final ResultLinks? links;
  @override
  final int? likes;
  @override
  final bool? likedByUser;
  final List<String?>? _currentUserCollections;
  @override
  List<String?>? get currentUserCollections {
    final value = _currentUserCollections;
    if (value == null) return null;
    if (_currentUserCollections is EqualUnmodifiableListView)
      return _currentUserCollections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? sponsorship;
  @override
  final TopicSubmissions? topicSubmissions;
  @override
  final bool? premium;
  @override
  final bool? plus;
  @override
  final User? user;

  @override
  String toString() {
    return 'CoverPhoto(id: $id, slug: $slug, createdAt: $createdAt, updatedAt: $updatedAt, promotedAt: $promotedAt, width: $width, height: $height, color: $color, blurHash: $blurHash, description: $description, altDescription: $altDescription, breadcrumbs: $breadcrumbs, urls: $urls, links: $links, likes: $likes, likedByUser: $likedByUser, currentUserCollections: $currentUserCollections, sponsorship: $sponsorship, topicSubmissions: $topicSubmissions, premium: $premium, plus: $plus, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverPhotoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.promotedAt, promotedAt) ||
                other.promotedAt == promotedAt) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.blurHash, blurHash) ||
                other.blurHash == blurHash) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.altDescription, altDescription) ||
                other.altDescription == altDescription) &&
            const DeepCollectionEquality()
                .equals(other._breadcrumbs, _breadcrumbs) &&
            (identical(other.urls, urls) || other.urls == urls) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.likedByUser, likedByUser) ||
                other.likedByUser == likedByUser) &&
            const DeepCollectionEquality().equals(
                other._currentUserCollections, _currentUserCollections) &&
            (identical(other.sponsorship, sponsorship) ||
                other.sponsorship == sponsorship) &&
            (identical(other.topicSubmissions, topicSubmissions) ||
                other.topicSubmissions == topicSubmissions) &&
            (identical(other.premium, premium) || other.premium == premium) &&
            (identical(other.plus, plus) || other.plus == plus) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        slug,
        createdAt,
        updatedAt,
        promotedAt,
        width,
        height,
        color,
        blurHash,
        description,
        altDescription,
        const DeepCollectionEquality().hash(_breadcrumbs),
        urls,
        links,
        likes,
        likedByUser,
        const DeepCollectionEquality().hash(_currentUserCollections),
        sponsorship,
        topicSubmissions,
        premium,
        plus,
        user
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoverPhotoImplCopyWith<_$CoverPhotoImpl> get copyWith =>
      __$$CoverPhotoImplCopyWithImpl<_$CoverPhotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverPhotoImplToJson(
      this,
    );
  }
}

abstract class _CoverPhoto implements CoverPhoto {
  const factory _CoverPhoto(
      {final String? id,
      final String? slug,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final DateTime? promotedAt,
      final int? width,
      final int? height,
      final String? color,
      final String? blurHash,
      final String? description,
      final String? altDescription,
      final List<String?>? breadcrumbs,
      final Urls? urls,
      final ResultLinks? links,
      final int? likes,
      final bool? likedByUser,
      final List<String?>? currentUserCollections,
      final String? sponsorship,
      final TopicSubmissions? topicSubmissions,
      final bool? premium,
      final bool? plus,
      final User? user}) = _$CoverPhotoImpl;

  factory _CoverPhoto.fromJson(Map<String, dynamic> json) =
      _$CoverPhotoImpl.fromJson;

  @override
  String? get id;
  @override
  String? get slug;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get promotedAt;
  @override
  int? get width;
  @override
  int? get height;
  @override
  String? get color;
  @override
  String? get blurHash;
  @override
  String? get description;
  @override
  String? get altDescription;
  @override
  List<String?>? get breadcrumbs;
  @override
  Urls? get urls;
  @override
  ResultLinks? get links;
  @override
  int? get likes;
  @override
  bool? get likedByUser;
  @override
  List<String?>? get currentUserCollections;
  @override
  String? get sponsorship;
  @override
  TopicSubmissions? get topicSubmissions;
  @override
  bool? get premium;
  @override
  bool? get plus;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$CoverPhotoImplCopyWith<_$CoverPhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopicSubmissions _$TopicSubmissionsFromJson(Map<String, dynamic> json) {
  return _TopicSubmissions.fromJson(json);
}

/// @nodoc
mixin _$TopicSubmissions {
  Animals? get animals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicSubmissionsCopyWith<TopicSubmissions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicSubmissionsCopyWith<$Res> {
  factory $TopicSubmissionsCopyWith(
          TopicSubmissions value, $Res Function(TopicSubmissions) then) =
      _$TopicSubmissionsCopyWithImpl<$Res, TopicSubmissions>;
  @useResult
  $Res call({Animals? animals});

  $AnimalsCopyWith<$Res>? get animals;
}

/// @nodoc
class _$TopicSubmissionsCopyWithImpl<$Res, $Val extends TopicSubmissions>
    implements $TopicSubmissionsCopyWith<$Res> {
  _$TopicSubmissionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animals = freezed,
  }) {
    return _then(_value.copyWith(
      animals: freezed == animals
          ? _value.animals
          : animals // ignore: cast_nullable_to_non_nullable
              as Animals?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnimalsCopyWith<$Res>? get animals {
    if (_value.animals == null) {
      return null;
    }

    return $AnimalsCopyWith<$Res>(_value.animals!, (value) {
      return _then(_value.copyWith(animals: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopicSubmissionsImplCopyWith<$Res>
    implements $TopicSubmissionsCopyWith<$Res> {
  factory _$$TopicSubmissionsImplCopyWith(_$TopicSubmissionsImpl value,
          $Res Function(_$TopicSubmissionsImpl) then) =
      __$$TopicSubmissionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Animals? animals});

  @override
  $AnimalsCopyWith<$Res>? get animals;
}

/// @nodoc
class __$$TopicSubmissionsImplCopyWithImpl<$Res>
    extends _$TopicSubmissionsCopyWithImpl<$Res, _$TopicSubmissionsImpl>
    implements _$$TopicSubmissionsImplCopyWith<$Res> {
  __$$TopicSubmissionsImplCopyWithImpl(_$TopicSubmissionsImpl _value,
      $Res Function(_$TopicSubmissionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animals = freezed,
  }) {
    return _then(_$TopicSubmissionsImpl(
      animals: freezed == animals
          ? _value.animals
          : animals // ignore: cast_nullable_to_non_nullable
              as Animals?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopicSubmissionsImpl implements _TopicSubmissions {
  const _$TopicSubmissionsImpl({this.animals});

  factory _$TopicSubmissionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicSubmissionsImplFromJson(json);

  @override
  final Animals? animals;

  @override
  String toString() {
    return 'TopicSubmissions(animals: $animals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicSubmissionsImpl &&
            (identical(other.animals, animals) || other.animals == animals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, animals);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicSubmissionsImplCopyWith<_$TopicSubmissionsImpl> get copyWith =>
      __$$TopicSubmissionsImplCopyWithImpl<_$TopicSubmissionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicSubmissionsImplToJson(
      this,
    );
  }
}

abstract class _TopicSubmissions implements TopicSubmissions {
  const factory _TopicSubmissions({final Animals? animals}) =
      _$TopicSubmissionsImpl;

  factory _TopicSubmissions.fromJson(Map<String, dynamic> json) =
      _$TopicSubmissionsImpl.fromJson;

  @override
  Animals? get animals;
  @override
  @JsonKey(ignore: true)
  _$$TopicSubmissionsImplCopyWith<_$TopicSubmissionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Animals _$AnimalsFromJson(Map<String, dynamic> json) {
  return _Animals.fromJson(json);
}

/// @nodoc
mixin _$Animals {
  String? get status => throw _privateConstructorUsedError;
  DateTime? get approvedOn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimalsCopyWith<Animals> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimalsCopyWith<$Res> {
  factory $AnimalsCopyWith(Animals value, $Res Function(Animals) then) =
      _$AnimalsCopyWithImpl<$Res, Animals>;
  @useResult
  $Res call({String? status, DateTime? approvedOn});
}

/// @nodoc
class _$AnimalsCopyWithImpl<$Res, $Val extends Animals>
    implements $AnimalsCopyWith<$Res> {
  _$AnimalsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? approvedOn = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedOn: freezed == approvedOn
          ? _value.approvedOn
          : approvedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnimalsImplCopyWith<$Res> implements $AnimalsCopyWith<$Res> {
  factory _$$AnimalsImplCopyWith(
          _$AnimalsImpl value, $Res Function(_$AnimalsImpl) then) =
      __$$AnimalsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, DateTime? approvedOn});
}

/// @nodoc
class __$$AnimalsImplCopyWithImpl<$Res>
    extends _$AnimalsCopyWithImpl<$Res, _$AnimalsImpl>
    implements _$$AnimalsImplCopyWith<$Res> {
  __$$AnimalsImplCopyWithImpl(
      _$AnimalsImpl _value, $Res Function(_$AnimalsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? approvedOn = freezed,
  }) {
    return _then(_$AnimalsImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedOn: freezed == approvedOn
          ? _value.approvedOn
          : approvedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnimalsImpl implements _Animals {
  const _$AnimalsImpl({this.status, this.approvedOn});

  factory _$AnimalsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnimalsImplFromJson(json);

  @override
  final String? status;
  @override
  final DateTime? approvedOn;

  @override
  String toString() {
    return 'Animals(status: $status, approvedOn: $approvedOn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimalsImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.approvedOn, approvedOn) ||
                other.approvedOn == approvedOn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, approvedOn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimalsImplCopyWith<_$AnimalsImpl> get copyWith =>
      __$$AnimalsImplCopyWithImpl<_$AnimalsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnimalsImplToJson(
      this,
    );
  }
}

abstract class _Animals implements Animals {
  const factory _Animals({final String? status, final DateTime? approvedOn}) =
      _$AnimalsImpl;

  factory _Animals.fromJson(Map<String, dynamic> json) = _$AnimalsImpl.fromJson;

  @override
  String? get status;
  @override
  DateTime? get approvedOn;
  @override
  @JsonKey(ignore: true)
  _$$AnimalsImplCopyWith<_$AnimalsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Urls _$UrlsFromJson(Map<String, dynamic> json) {
  return _Urls.fromJson(json);
}

/// @nodoc
mixin _$Urls {
  String? get raw => throw _privateConstructorUsedError;
  String? get full => throw _privateConstructorUsedError;
  String? get regular => throw _privateConstructorUsedError;
  String? get small => throw _privateConstructorUsedError;
  String? get thumb => throw _privateConstructorUsedError;
  String? get smallS3 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlsCopyWith<Urls> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlsCopyWith<$Res> {
  factory $UrlsCopyWith(Urls value, $Res Function(Urls) then) =
      _$UrlsCopyWithImpl<$Res, Urls>;
  @useResult
  $Res call(
      {String? raw,
      String? full,
      String? regular,
      String? small,
      String? thumb,
      String? smallS3});
}

/// @nodoc
class _$UrlsCopyWithImpl<$Res, $Val extends Urls>
    implements $UrlsCopyWith<$Res> {
  _$UrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = freezed,
    Object? full = freezed,
    Object? regular = freezed,
    Object? small = freezed,
    Object? thumb = freezed,
    Object? smallS3 = freezed,
  }) {
    return _then(_value.copyWith(
      raw: freezed == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String?,
      full: freezed == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String?,
      regular: freezed == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      thumb: freezed == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String?,
      smallS3: freezed == smallS3
          ? _value.smallS3
          : smallS3 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UrlsImplCopyWith<$Res> implements $UrlsCopyWith<$Res> {
  factory _$$UrlsImplCopyWith(
          _$UrlsImpl value, $Res Function(_$UrlsImpl) then) =
      __$$UrlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? raw,
      String? full,
      String? regular,
      String? small,
      String? thumb,
      String? smallS3});
}

/// @nodoc
class __$$UrlsImplCopyWithImpl<$Res>
    extends _$UrlsCopyWithImpl<$Res, _$UrlsImpl>
    implements _$$UrlsImplCopyWith<$Res> {
  __$$UrlsImplCopyWithImpl(_$UrlsImpl _value, $Res Function(_$UrlsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = freezed,
    Object? full = freezed,
    Object? regular = freezed,
    Object? small = freezed,
    Object? thumb = freezed,
    Object? smallS3 = freezed,
  }) {
    return _then(_$UrlsImpl(
      raw: freezed == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String?,
      full: freezed == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String?,
      regular: freezed == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      thumb: freezed == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String?,
      smallS3: freezed == smallS3
          ? _value.smallS3
          : smallS3 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UrlsImpl implements _Urls {
  const _$UrlsImpl(
      {this.raw,
      this.full,
      this.regular,
      this.small,
      this.thumb,
      this.smallS3});

  factory _$UrlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UrlsImplFromJson(json);

  @override
  final String? raw;
  @override
  final String? full;
  @override
  final String? regular;
  @override
  final String? small;
  @override
  final String? thumb;
  @override
  final String? smallS3;

  @override
  String toString() {
    return 'Urls(raw: $raw, full: $full, regular: $regular, small: $small, thumb: $thumb, smallS3: $smallS3)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrlsImpl &&
            (identical(other.raw, raw) || other.raw == raw) &&
            (identical(other.full, full) || other.full == full) &&
            (identical(other.regular, regular) || other.regular == regular) &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.thumb, thumb) || other.thumb == thumb) &&
            (identical(other.smallS3, smallS3) || other.smallS3 == smallS3));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, raw, full, regular, small, thumb, smallS3);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UrlsImplCopyWith<_$UrlsImpl> get copyWith =>
      __$$UrlsImplCopyWithImpl<_$UrlsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UrlsImplToJson(
      this,
    );
  }
}

abstract class _Urls implements Urls {
  const factory _Urls(
      {final String? raw,
      final String? full,
      final String? regular,
      final String? small,
      final String? thumb,
      final String? smallS3}) = _$UrlsImpl;

  factory _Urls.fromJson(Map<String, dynamic> json) = _$UrlsImpl.fromJson;

  @override
  String? get raw;
  @override
  String? get full;
  @override
  String? get regular;
  @override
  String? get small;
  @override
  String? get thumb;
  @override
  String? get smallS3;
  @override
  @JsonKey(ignore: true)
  _$$UrlsImplCopyWith<_$UrlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String? get id => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get twitterUsername => throw _privateConstructorUsedError;
  String? get portfolioUrl => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  UserLinks? get links => throw _privateConstructorUsedError;
  ProfileImage? get profileImage => throw _privateConstructorUsedError;
  String? get instagramUsername => throw _privateConstructorUsedError;
  int? get totalCollections => throw _privateConstructorUsedError;
  int? get totalLikes => throw _privateConstructorUsedError;
  int? get totalPhotos => throw _privateConstructorUsedError;
  bool? get acceptedTos => throw _privateConstructorUsedError;
  bool? get forHire => throw _privateConstructorUsedError;
  Social? get social => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String? id,
      DateTime? updatedAt,
      String? username,
      String? name,
      String? firstName,
      String? lastName,
      String? twitterUsername,
      String? portfolioUrl,
      String? bio,
      String? location,
      UserLinks? links,
      ProfileImage? profileImage,
      String? instagramUsername,
      int? totalCollections,
      int? totalLikes,
      int? totalPhotos,
      bool? acceptedTos,
      bool? forHire,
      Social? social});

  $UserLinksCopyWith<$Res>? get links;
  $ProfileImageCopyWith<$Res>? get profileImage;
  $SocialCopyWith<$Res>? get social;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? updatedAt = freezed,
    Object? username = freezed,
    Object? name = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? twitterUsername = freezed,
    Object? portfolioUrl = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? links = freezed,
    Object? profileImage = freezed,
    Object? instagramUsername = freezed,
    Object? totalCollections = freezed,
    Object? totalLikes = freezed,
    Object? totalPhotos = freezed,
    Object? acceptedTos = freezed,
    Object? forHire = freezed,
    Object? social = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUsername: freezed == twitterUsername
          ? _value.twitterUsername
          : twitterUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      portfolioUrl: freezed == portfolioUrl
          ? _value.portfolioUrl
          : portfolioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as UserLinks?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as ProfileImage?,
      instagramUsername: freezed == instagramUsername
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCollections: freezed == totalCollections
          ? _value.totalCollections
          : totalCollections // ignore: cast_nullable_to_non_nullable
              as int?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPhotos: freezed == totalPhotos
          ? _value.totalPhotos
          : totalPhotos // ignore: cast_nullable_to_non_nullable
              as int?,
      acceptedTos: freezed == acceptedTos
          ? _value.acceptedTos
          : acceptedTos // ignore: cast_nullable_to_non_nullable
              as bool?,
      forHire: freezed == forHire
          ? _value.forHire
          : forHire // ignore: cast_nullable_to_non_nullable
              as bool?,
      social: freezed == social
          ? _value.social
          : social // ignore: cast_nullable_to_non_nullable
              as Social?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserLinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $UserLinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileImageCopyWith<$Res>? get profileImage {
    if (_value.profileImage == null) {
      return null;
    }

    return $ProfileImageCopyWith<$Res>(_value.profileImage!, (value) {
      return _then(_value.copyWith(profileImage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SocialCopyWith<$Res>? get social {
    if (_value.social == null) {
      return null;
    }

    return $SocialCopyWith<$Res>(_value.social!, (value) {
      return _then(_value.copyWith(social: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      DateTime? updatedAt,
      String? username,
      String? name,
      String? firstName,
      String? lastName,
      String? twitterUsername,
      String? portfolioUrl,
      String? bio,
      String? location,
      UserLinks? links,
      ProfileImage? profileImage,
      String? instagramUsername,
      int? totalCollections,
      int? totalLikes,
      int? totalPhotos,
      bool? acceptedTos,
      bool? forHire,
      Social? social});

  @override
  $UserLinksCopyWith<$Res>? get links;
  @override
  $ProfileImageCopyWith<$Res>? get profileImage;
  @override
  $SocialCopyWith<$Res>? get social;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? updatedAt = freezed,
    Object? username = freezed,
    Object? name = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? twitterUsername = freezed,
    Object? portfolioUrl = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? links = freezed,
    Object? profileImage = freezed,
    Object? instagramUsername = freezed,
    Object? totalCollections = freezed,
    Object? totalLikes = freezed,
    Object? totalPhotos = freezed,
    Object? acceptedTos = freezed,
    Object? forHire = freezed,
    Object? social = freezed,
  }) {
    return _then(_$UserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUsername: freezed == twitterUsername
          ? _value.twitterUsername
          : twitterUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      portfolioUrl: freezed == portfolioUrl
          ? _value.portfolioUrl
          : portfolioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as UserLinks?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as ProfileImage?,
      instagramUsername: freezed == instagramUsername
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCollections: freezed == totalCollections
          ? _value.totalCollections
          : totalCollections // ignore: cast_nullable_to_non_nullable
              as int?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPhotos: freezed == totalPhotos
          ? _value.totalPhotos
          : totalPhotos // ignore: cast_nullable_to_non_nullable
              as int?,
      acceptedTos: freezed == acceptedTos
          ? _value.acceptedTos
          : acceptedTos // ignore: cast_nullable_to_non_nullable
              as bool?,
      forHire: freezed == forHire
          ? _value.forHire
          : forHire // ignore: cast_nullable_to_non_nullable
              as bool?,
      social: freezed == social
          ? _value.social
          : social // ignore: cast_nullable_to_non_nullable
              as Social?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {this.id,
      this.updatedAt,
      this.username,
      this.name,
      this.firstName,
      this.lastName,
      this.twitterUsername,
      this.portfolioUrl,
      this.bio,
      this.location,
      this.links,
      this.profileImage,
      this.instagramUsername,
      this.totalCollections,
      this.totalLikes,
      this.totalPhotos,
      this.acceptedTos,
      this.forHire,
      this.social});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String? id;
  @override
  final DateTime? updatedAt;
  @override
  final String? username;
  @override
  final String? name;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? twitterUsername;
  @override
  final String? portfolioUrl;
  @override
  final String? bio;
  @override
  final String? location;
  @override
  final UserLinks? links;
  @override
  final ProfileImage? profileImage;
  @override
  final String? instagramUsername;
  @override
  final int? totalCollections;
  @override
  final int? totalLikes;
  @override
  final int? totalPhotos;
  @override
  final bool? acceptedTos;
  @override
  final bool? forHire;
  @override
  final Social? social;

  @override
  String toString() {
    return 'User(id: $id, updatedAt: $updatedAt, username: $username, name: $name, firstName: $firstName, lastName: $lastName, twitterUsername: $twitterUsername, portfolioUrl: $portfolioUrl, bio: $bio, location: $location, links: $links, profileImage: $profileImage, instagramUsername: $instagramUsername, totalCollections: $totalCollections, totalLikes: $totalLikes, totalPhotos: $totalPhotos, acceptedTos: $acceptedTos, forHire: $forHire, social: $social)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.twitterUsername, twitterUsername) ||
                other.twitterUsername == twitterUsername) &&
            (identical(other.portfolioUrl, portfolioUrl) ||
                other.portfolioUrl == portfolioUrl) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.instagramUsername, instagramUsername) ||
                other.instagramUsername == instagramUsername) &&
            (identical(other.totalCollections, totalCollections) ||
                other.totalCollections == totalCollections) &&
            (identical(other.totalLikes, totalLikes) ||
                other.totalLikes == totalLikes) &&
            (identical(other.totalPhotos, totalPhotos) ||
                other.totalPhotos == totalPhotos) &&
            (identical(other.acceptedTos, acceptedTos) ||
                other.acceptedTos == acceptedTos) &&
            (identical(other.forHire, forHire) || other.forHire == forHire) &&
            (identical(other.social, social) || other.social == social));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        updatedAt,
        username,
        name,
        firstName,
        lastName,
        twitterUsername,
        portfolioUrl,
        bio,
        location,
        links,
        profileImage,
        instagramUsername,
        totalCollections,
        totalLikes,
        totalPhotos,
        acceptedTos,
        forHire,
        social
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final String? id,
      final DateTime? updatedAt,
      final String? username,
      final String? name,
      final String? firstName,
      final String? lastName,
      final String? twitterUsername,
      final String? portfolioUrl,
      final String? bio,
      final String? location,
      final UserLinks? links,
      final ProfileImage? profileImage,
      final String? instagramUsername,
      final int? totalCollections,
      final int? totalLikes,
      final int? totalPhotos,
      final bool? acceptedTos,
      final bool? forHire,
      final Social? social}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String? get id;
  @override
  DateTime? get updatedAt;
  @override
  String? get username;
  @override
  String? get name;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get twitterUsername;
  @override
  String? get portfolioUrl;
  @override
  String? get bio;
  @override
  String? get location;
  @override
  UserLinks? get links;
  @override
  ProfileImage? get profileImage;
  @override
  String? get instagramUsername;
  @override
  int? get totalCollections;
  @override
  int? get totalLikes;
  @override
  int? get totalPhotos;
  @override
  bool? get acceptedTos;
  @override
  bool? get forHire;
  @override
  Social? get social;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserLinks _$UserLinksFromJson(Map<String, dynamic> json) {
  return _UserLinks.fromJson(json);
}

/// @nodoc
mixin _$UserLinks {
  String? get self => throw _privateConstructorUsedError;
  String? get html => throw _privateConstructorUsedError;
  String? get photos => throw _privateConstructorUsedError;
  String? get likes => throw _privateConstructorUsedError;
  String? get portfolio => throw _privateConstructorUsedError;
  String? get following => throw _privateConstructorUsedError;
  String? get followers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLinksCopyWith<UserLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLinksCopyWith<$Res> {
  factory $UserLinksCopyWith(UserLinks value, $Res Function(UserLinks) then) =
      _$UserLinksCopyWithImpl<$Res, UserLinks>;
  @useResult
  $Res call(
      {String? self,
      String? html,
      String? photos,
      String? likes,
      String? portfolio,
      String? following,
      String? followers});
}

/// @nodoc
class _$UserLinksCopyWithImpl<$Res, $Val extends UserLinks>
    implements $UserLinksCopyWith<$Res> {
  _$UserLinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = freezed,
    Object? html = freezed,
    Object? photos = freezed,
    Object? likes = freezed,
    Object? portfolio = freezed,
    Object? following = freezed,
    Object? followers = freezed,
  }) {
    return _then(_value.copyWith(
      self: freezed == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String?,
      html: freezed == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as String?,
      portfolio: freezed == portfolio
          ? _value.portfolio
          : portfolio // ignore: cast_nullable_to_non_nullable
              as String?,
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as String?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLinksImplCopyWith<$Res>
    implements $UserLinksCopyWith<$Res> {
  factory _$$UserLinksImplCopyWith(
          _$UserLinksImpl value, $Res Function(_$UserLinksImpl) then) =
      __$$UserLinksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? self,
      String? html,
      String? photos,
      String? likes,
      String? portfolio,
      String? following,
      String? followers});
}

/// @nodoc
class __$$UserLinksImplCopyWithImpl<$Res>
    extends _$UserLinksCopyWithImpl<$Res, _$UserLinksImpl>
    implements _$$UserLinksImplCopyWith<$Res> {
  __$$UserLinksImplCopyWithImpl(
      _$UserLinksImpl _value, $Res Function(_$UserLinksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = freezed,
    Object? html = freezed,
    Object? photos = freezed,
    Object? likes = freezed,
    Object? portfolio = freezed,
    Object? following = freezed,
    Object? followers = freezed,
  }) {
    return _then(_$UserLinksImpl(
      self: freezed == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String?,
      html: freezed == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as String?,
      portfolio: freezed == portfolio
          ? _value.portfolio
          : portfolio // ignore: cast_nullable_to_non_nullable
              as String?,
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as String?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLinksImpl implements _UserLinks {
  const _$UserLinksImpl(
      {this.self,
      this.html,
      this.photos,
      this.likes,
      this.portfolio,
      this.following,
      this.followers});

  factory _$UserLinksImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLinksImplFromJson(json);

  @override
  final String? self;
  @override
  final String? html;
  @override
  final String? photos;
  @override
  final String? likes;
  @override
  final String? portfolio;
  @override
  final String? following;
  @override
  final String? followers;

  @override
  String toString() {
    return 'UserLinks(self: $self, html: $html, photos: $photos, likes: $likes, portfolio: $portfolio, following: $following, followers: $followers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLinksImpl &&
            (identical(other.self, self) || other.self == self) &&
            (identical(other.html, html) || other.html == html) &&
            (identical(other.photos, photos) || other.photos == photos) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.portfolio, portfolio) ||
                other.portfolio == portfolio) &&
            (identical(other.following, following) ||
                other.following == following) &&
            (identical(other.followers, followers) ||
                other.followers == followers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, self, html, photos, likes, portfolio, following, followers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLinksImplCopyWith<_$UserLinksImpl> get copyWith =>
      __$$UserLinksImplCopyWithImpl<_$UserLinksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLinksImplToJson(
      this,
    );
  }
}

abstract class _UserLinks implements UserLinks {
  const factory _UserLinks(
      {final String? self,
      final String? html,
      final String? photos,
      final String? likes,
      final String? portfolio,
      final String? following,
      final String? followers}) = _$UserLinksImpl;

  factory _UserLinks.fromJson(Map<String, dynamic> json) =
      _$UserLinksImpl.fromJson;

  @override
  String? get self;
  @override
  String? get html;
  @override
  String? get photos;
  @override
  String? get likes;
  @override
  String? get portfolio;
  @override
  String? get following;
  @override
  String? get followers;
  @override
  @JsonKey(ignore: true)
  _$$UserLinksImplCopyWith<_$UserLinksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileImage _$ProfileImageFromJson(Map<String, dynamic> json) {
  return _ProfileImage.fromJson(json);
}

/// @nodoc
mixin _$ProfileImage {
  String? get small => throw _privateConstructorUsedError;
  String? get medium => throw _privateConstructorUsedError;
  String? get large => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileImageCopyWith<ProfileImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileImageCopyWith<$Res> {
  factory $ProfileImageCopyWith(
          ProfileImage value, $Res Function(ProfileImage) then) =
      _$ProfileImageCopyWithImpl<$Res, ProfileImage>;
  @useResult
  $Res call({String? small, String? medium, String? large});
}

/// @nodoc
class _$ProfileImageCopyWithImpl<$Res, $Val extends ProfileImage>
    implements $ProfileImageCopyWith<$Res> {
  _$ProfileImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? medium = freezed,
    Object? large = freezed,
  }) {
    return _then(_value.copyWith(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileImageImplCopyWith<$Res>
    implements $ProfileImageCopyWith<$Res> {
  factory _$$ProfileImageImplCopyWith(
          _$ProfileImageImpl value, $Res Function(_$ProfileImageImpl) then) =
      __$$ProfileImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? small, String? medium, String? large});
}

/// @nodoc
class __$$ProfileImageImplCopyWithImpl<$Res>
    extends _$ProfileImageCopyWithImpl<$Res, _$ProfileImageImpl>
    implements _$$ProfileImageImplCopyWith<$Res> {
  __$$ProfileImageImplCopyWithImpl(
      _$ProfileImageImpl _value, $Res Function(_$ProfileImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? medium = freezed,
    Object? large = freezed,
  }) {
    return _then(_$ProfileImageImpl(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileImageImpl implements _ProfileImage {
  const _$ProfileImageImpl({this.small, this.medium, this.large});

  factory _$ProfileImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileImageImplFromJson(json);

  @override
  final String? small;
  @override
  final String? medium;
  @override
  final String? large;

  @override
  String toString() {
    return 'ProfileImage(small: $small, medium: $medium, large: $large)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImageImpl &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, small, medium, large);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImageImplCopyWith<_$ProfileImageImpl> get copyWith =>
      __$$ProfileImageImplCopyWithImpl<_$ProfileImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileImageImplToJson(
      this,
    );
  }
}

abstract class _ProfileImage implements ProfileImage {
  const factory _ProfileImage(
      {final String? small,
      final String? medium,
      final String? large}) = _$ProfileImageImpl;

  factory _ProfileImage.fromJson(Map<String, dynamic> json) =
      _$ProfileImageImpl.fromJson;

  @override
  String? get small;
  @override
  String? get medium;
  @override
  String? get large;
  @override
  @JsonKey(ignore: true)
  _$$ProfileImageImplCopyWith<_$ProfileImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Social _$SocialFromJson(Map<String, dynamic> json) {
  return _Social.fromJson(json);
}

/// @nodoc
mixin _$Social {
  String? get instagramUsername => throw _privateConstructorUsedError;
  String? get portfolioUrl => throw _privateConstructorUsedError;
  String? get twitterUsername => throw _privateConstructorUsedError;
  String? get paypalEmail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialCopyWith<Social> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialCopyWith<$Res> {
  factory $SocialCopyWith(Social value, $Res Function(Social) then) =
      _$SocialCopyWithImpl<$Res, Social>;
  @useResult
  $Res call(
      {String? instagramUsername,
      String? portfolioUrl,
      String? twitterUsername,
      String? paypalEmail});
}

/// @nodoc
class _$SocialCopyWithImpl<$Res, $Val extends Social>
    implements $SocialCopyWith<$Res> {
  _$SocialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instagramUsername = freezed,
    Object? portfolioUrl = freezed,
    Object? twitterUsername = freezed,
    Object? paypalEmail = freezed,
  }) {
    return _then(_value.copyWith(
      instagramUsername: freezed == instagramUsername
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      portfolioUrl: freezed == portfolioUrl
          ? _value.portfolioUrl
          : portfolioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUsername: freezed == twitterUsername
          ? _value.twitterUsername
          : twitterUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      paypalEmail: freezed == paypalEmail
          ? _value.paypalEmail
          : paypalEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialImplCopyWith<$Res> implements $SocialCopyWith<$Res> {
  factory _$$SocialImplCopyWith(
          _$SocialImpl value, $Res Function(_$SocialImpl) then) =
      __$$SocialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? instagramUsername,
      String? portfolioUrl,
      String? twitterUsername,
      String? paypalEmail});
}

/// @nodoc
class __$$SocialImplCopyWithImpl<$Res>
    extends _$SocialCopyWithImpl<$Res, _$SocialImpl>
    implements _$$SocialImplCopyWith<$Res> {
  __$$SocialImplCopyWithImpl(
      _$SocialImpl _value, $Res Function(_$SocialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instagramUsername = freezed,
    Object? portfolioUrl = freezed,
    Object? twitterUsername = freezed,
    Object? paypalEmail = freezed,
  }) {
    return _then(_$SocialImpl(
      instagramUsername: freezed == instagramUsername
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      portfolioUrl: freezed == portfolioUrl
          ? _value.portfolioUrl
          : portfolioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUsername: freezed == twitterUsername
          ? _value.twitterUsername
          : twitterUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      paypalEmail: freezed == paypalEmail
          ? _value.paypalEmail
          : paypalEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialImpl implements _Social {
  const _$SocialImpl(
      {this.instagramUsername,
      this.portfolioUrl,
      this.twitterUsername,
      this.paypalEmail});

  factory _$SocialImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialImplFromJson(json);

  @override
  final String? instagramUsername;
  @override
  final String? portfolioUrl;
  @override
  final String? twitterUsername;
  @override
  final String? paypalEmail;

  @override
  String toString() {
    return 'Social(instagramUsername: $instagramUsername, portfolioUrl: $portfolioUrl, twitterUsername: $twitterUsername, paypalEmail: $paypalEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialImpl &&
            (identical(other.instagramUsername, instagramUsername) ||
                other.instagramUsername == instagramUsername) &&
            (identical(other.portfolioUrl, portfolioUrl) ||
                other.portfolioUrl == portfolioUrl) &&
            (identical(other.twitterUsername, twitterUsername) ||
                other.twitterUsername == twitterUsername) &&
            (identical(other.paypalEmail, paypalEmail) ||
                other.paypalEmail == paypalEmail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, instagramUsername, portfolioUrl,
      twitterUsername, paypalEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialImplCopyWith<_$SocialImpl> get copyWith =>
      __$$SocialImplCopyWithImpl<_$SocialImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialImplToJson(
      this,
    );
  }
}

abstract class _Social implements Social {
  const factory _Social(
      {final String? instagramUsername,
      final String? portfolioUrl,
      final String? twitterUsername,
      final String? paypalEmail}) = _$SocialImpl;

  factory _Social.fromJson(Map<String, dynamic> json) = _$SocialImpl.fromJson;

  @override
  String? get instagramUsername;
  @override
  String? get portfolioUrl;
  @override
  String? get twitterUsername;
  @override
  String? get paypalEmail;
  @override
  @JsonKey(ignore: true)
  _$$SocialImplCopyWith<_$SocialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
