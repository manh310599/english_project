import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_from_text.g.dart';

part 'image_from_text.freezed.dart';

@freezed
class ImageFromText with _$ImageFromText {
  const factory ImageFromText({
    int? total,
    int? totalPages,
    List<Result>? results,
  }) = _ImageFromText;

  factory ImageFromText.fromJson(Map<String, dynamic> json) =>
      _$ImageFromTextFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    String? id,
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
    List<Tag>? tags,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Breadcrumb with _$Breadcrumb {
  const factory Breadcrumb({
    String? slug,
    String? title,
    int? index,
    String? type,
  }) = _Breadcrumb;

  factory Breadcrumb.fromJson(Map<String, dynamic> json) =>
      _$BreadcrumbFromJson(json);
}

@freezed
class ResultLinks with _$ResultLinks {
  const factory ResultLinks({
    String? self,
    String? html,
    String? download,
    String? downloadLocation,
  }) = _ResultLinks;

  factory ResultLinks.fromJson(Map<String, dynamic> json) =>
      _$ResultLinksFromJson(json);
}

@freezed
class Tag with _$Tag {
  const factory Tag({
    String? type,
    String? title,
    Source? source,
  }) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}

@freezed
class Source with _$Source {
  const factory Source({
    Ancestry? ancestry,
    String? title,
    String? subtitle,
    String? description,
    String? metaTitle,
    String? metaDescription,
    CoverPhoto? coverPhoto,
  }) = _Source;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}

@freezed
class Ancestry with _$Ancestry {
  const factory Ancestry({
    Category? type,
    Category? category,
    Category? subcategory,
  }) = _Ancestry;

  factory Ancestry.fromJson(Map<String, dynamic> json) =>
      _$AncestryFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    String? slug,
    String? prettySlug,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class CoverPhoto with _$CoverPhoto {
  const factory CoverPhoto({
    String? id,
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
    User? user,
  }) = _CoverPhoto;

  factory CoverPhoto.fromJson(Map<String, dynamic> json) =>
      _$CoverPhotoFromJson(json);
}

@freezed
class TopicSubmissions with _$TopicSubmissions {
  const factory TopicSubmissions({
    Animals? animals,
  }) = _TopicSubmissions;

  factory TopicSubmissions.fromJson(Map<String, dynamic> json) =>
      _$TopicSubmissionsFromJson(json);
}

@freezed
class Animals with _$Animals {
  const factory Animals({
    String? status,
    DateTime? approvedOn,
  }) = _Animals;

  factory Animals.fromJson(Map<String, dynamic> json) =>
      _$AnimalsFromJson(json);
}

@freezed
class Urls with _$Urls {
  const factory Urls({
    String? raw,
    String? full,
    String? regular,
    String? small,
    String? thumb,
    String? smallS3,
  }) = _Urls;

  factory Urls.fromJson(Map<String, dynamic> json) => _$UrlsFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    String? id,
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
    Social? social,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class UserLinks with _$UserLinks {
  const factory UserLinks({
    String? self,
    String? html,
    String? photos,
    String? likes,
    String? portfolio,
    String? following,
    String? followers,
  }) = _UserLinks;

  factory UserLinks.fromJson(Map<String, dynamic> json) =>
      _$UserLinksFromJson(json);
}

@freezed
class ProfileImage with _$ProfileImage {
  const factory ProfileImage({
    String? small,
    String? medium,
    String? large,
  }) = _ProfileImage;

  factory ProfileImage.fromJson(Map<String, dynamic> json) =>
      _$ProfileImageFromJson(json);
}

@freezed
class Social with _$Social {
  const factory Social({
    String? instagramUsername,
    String? portfolioUrl,
    String? twitterUsername,
    String? paypalEmail,
  }) = _Social;

  factory Social.fromJson(Map<String, dynamic> json) => _$SocialFromJson(json);
}
