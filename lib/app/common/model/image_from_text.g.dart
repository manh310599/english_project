// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_from_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageFromTextImpl _$$ImageFromTextImplFromJson(Map<String, dynamic> json) =>
    _$ImageFromTextImpl(
      total: json['total'] as int?,
      totalPages: json['totalPages'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ImageFromTextImplToJson(_$ImageFromTextImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'totalPages': instance.totalPages,
      'results': instance.results,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      id: json['id'] as String?,
      slug: json['slug'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      promotedAt: json['promotedAt'] == null
          ? null
          : DateTime.parse(json['promotedAt'] as String),
      width: json['width'] as int?,
      height: json['height'] as int?,
      color: json['color'] as String?,
      blurHash: json['blurHash'] as String?,
      description: json['description'] as String?,
      altDescription: json['altDescription'] as String?,
      breadcrumbs: (json['breadcrumbs'] as List<dynamic>?)
          ?.map((e) => Breadcrumb.fromJson(e as Map<String, dynamic>))
          .toList(),
      urls: json['urls'] == null
          ? null
          : Urls.fromJson(json['urls'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : ResultLinks.fromJson(json['links'] as Map<String, dynamic>),
      likes: json['likes'] as int?,
      likedByUser: json['likedByUser'] as bool?,
      currentUserCollections: (json['currentUserCollections'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      topicSubmissions: json['topicSubmissions'] == null
          ? null
          : TopicSubmissions.fromJson(
              json['topicSubmissions'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'promotedAt': instance.promotedAt?.toIso8601String(),
      'width': instance.width,
      'height': instance.height,
      'color': instance.color,
      'blurHash': instance.blurHash,
      'description': instance.description,
      'altDescription': instance.altDescription,
      'breadcrumbs': instance.breadcrumbs,
      'urls': instance.urls,
      'links': instance.links,
      'likes': instance.likes,
      'likedByUser': instance.likedByUser,
      'currentUserCollections': instance.currentUserCollections,
      'topicSubmissions': instance.topicSubmissions,
      'user': instance.user,
      'tags': instance.tags,
    };

_$BreadcrumbImpl _$$BreadcrumbImplFromJson(Map<String, dynamic> json) =>
    _$BreadcrumbImpl(
      slug: json['slug'] as String?,
      title: json['title'] as String?,
      index: json['index'] as int?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$BreadcrumbImplToJson(_$BreadcrumbImpl instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'title': instance.title,
      'index': instance.index,
      'type': instance.type,
    };

_$ResultLinksImpl _$$ResultLinksImplFromJson(Map<String, dynamic> json) =>
    _$ResultLinksImpl(
      self: json['self'] as String?,
      html: json['html'] as String?,
      download: json['download'] as String?,
      downloadLocation: json['downloadLocation'] as String?,
    );

Map<String, dynamic> _$$ResultLinksImplToJson(_$ResultLinksImpl instance) =>
    <String, dynamic>{
      'self': instance.self,
      'html': instance.html,
      'download': instance.download,
      'downloadLocation': instance.downloadLocation,
    };

_$TagImpl _$$TagImplFromJson(Map<String, dynamic> json) => _$TagImpl(
      type: json['type'] as String?,
      title: json['title'] as String?,
      source: json['source'] == null
          ? null
          : Source.fromJson(json['source'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TagImplToJson(_$TagImpl instance) => <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'source': instance.source,
    };

_$SourceImpl _$$SourceImplFromJson(Map<String, dynamic> json) => _$SourceImpl(
      ancestry: json['ancestry'] == null
          ? null
          : Ancestry.fromJson(json['ancestry'] as Map<String, dynamic>),
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      description: json['description'] as String?,
      metaTitle: json['metaTitle'] as String?,
      metaDescription: json['metaDescription'] as String?,
      coverPhoto: json['coverPhoto'] == null
          ? null
          : CoverPhoto.fromJson(json['coverPhoto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SourceImplToJson(_$SourceImpl instance) =>
    <String, dynamic>{
      'ancestry': instance.ancestry,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'description': instance.description,
      'metaTitle': instance.metaTitle,
      'metaDescription': instance.metaDescription,
      'coverPhoto': instance.coverPhoto,
    };

_$AncestryImpl _$$AncestryImplFromJson(Map<String, dynamic> json) =>
    _$AncestryImpl(
      type: json['type'] == null
          ? null
          : Category.fromJson(json['type'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      subcategory: json['subcategory'] == null
          ? null
          : Category.fromJson(json['subcategory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AncestryImplToJson(_$AncestryImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'category': instance.category,
      'subcategory': instance.subcategory,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      slug: json['slug'] as String?,
      prettySlug: json['prettySlug'] as String?,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'prettySlug': instance.prettySlug,
    };

_$CoverPhotoImpl _$$CoverPhotoImplFromJson(Map<String, dynamic> json) =>
    _$CoverPhotoImpl(
      id: json['id'] as String?,
      slug: json['slug'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      promotedAt: json['promotedAt'] == null
          ? null
          : DateTime.parse(json['promotedAt'] as String),
      width: json['width'] as int?,
      height: json['height'] as int?,
      color: json['color'] as String?,
      blurHash: json['blurHash'] as String?,
      description: json['description'] as String?,
      altDescription: json['altDescription'] as String?,
      breadcrumbs: (json['breadcrumbs'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      urls: json['urls'] == null
          ? null
          : Urls.fromJson(json['urls'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : ResultLinks.fromJson(json['links'] as Map<String, dynamic>),
      likes: json['likes'] as int?,
      likedByUser: json['likedByUser'] as bool?,
      currentUserCollections: (json['currentUserCollections'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      sponsorship: json['sponsorship'] as String?,
      topicSubmissions: json['topicSubmissions'] == null
          ? null
          : TopicSubmissions.fromJson(
              json['topicSubmissions'] as Map<String, dynamic>),
      premium: json['premium'] as bool?,
      plus: json['plus'] as bool?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CoverPhotoImplToJson(_$CoverPhotoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'promotedAt': instance.promotedAt?.toIso8601String(),
      'width': instance.width,
      'height': instance.height,
      'color': instance.color,
      'blurHash': instance.blurHash,
      'description': instance.description,
      'altDescription': instance.altDescription,
      'breadcrumbs': instance.breadcrumbs,
      'urls': instance.urls,
      'links': instance.links,
      'likes': instance.likes,
      'likedByUser': instance.likedByUser,
      'currentUserCollections': instance.currentUserCollections,
      'sponsorship': instance.sponsorship,
      'topicSubmissions': instance.topicSubmissions,
      'premium': instance.premium,
      'plus': instance.plus,
      'user': instance.user,
    };

_$TopicSubmissionsImpl _$$TopicSubmissionsImplFromJson(
        Map<String, dynamic> json) =>
    _$TopicSubmissionsImpl(
      animals: json['animals'] == null
          ? null
          : Animals.fromJson(json['animals'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TopicSubmissionsImplToJson(
        _$TopicSubmissionsImpl instance) =>
    <String, dynamic>{
      'animals': instance.animals,
    };

_$AnimalsImpl _$$AnimalsImplFromJson(Map<String, dynamic> json) =>
    _$AnimalsImpl(
      status: json['status'] as String?,
      approvedOn: json['approvedOn'] == null
          ? null
          : DateTime.parse(json['approvedOn'] as String),
    );

Map<String, dynamic> _$$AnimalsImplToJson(_$AnimalsImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'approvedOn': instance.approvedOn?.toIso8601String(),
    };

_$UrlsImpl _$$UrlsImplFromJson(Map<String, dynamic> json) => _$UrlsImpl(
      raw: json['raw'] as String?,
      full: json['full'] as String?,
      regular: json['regular'] as String?,
      small: json['small'] as String?,
      thumb: json['thumb'] as String?,
      smallS3: json['smallS3'] as String?,
    );

Map<String, dynamic> _$$UrlsImplToJson(_$UrlsImpl instance) =>
    <String, dynamic>{
      'raw': instance.raw,
      'full': instance.full,
      'regular': instance.regular,
      'small': instance.small,
      'thumb': instance.thumb,
      'smallS3': instance.smallS3,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      username: json['username'] as String?,
      name: json['name'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      twitterUsername: json['twitterUsername'] as String?,
      portfolioUrl: json['portfolioUrl'] as String?,
      bio: json['bio'] as String?,
      location: json['location'] as String?,
      links: json['links'] == null
          ? null
          : UserLinks.fromJson(json['links'] as Map<String, dynamic>),
      profileImage: json['profileImage'] == null
          ? null
          : ProfileImage.fromJson(json['profileImage'] as Map<String, dynamic>),
      instagramUsername: json['instagramUsername'] as String?,
      totalCollections: json['totalCollections'] as int?,
      totalLikes: json['totalLikes'] as int?,
      totalPhotos: json['totalPhotos'] as int?,
      acceptedTos: json['acceptedTos'] as bool?,
      forHire: json['forHire'] as bool?,
      social: json['social'] == null
          ? null
          : Social.fromJson(json['social'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'username': instance.username,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'twitterUsername': instance.twitterUsername,
      'portfolioUrl': instance.portfolioUrl,
      'bio': instance.bio,
      'location': instance.location,
      'links': instance.links,
      'profileImage': instance.profileImage,
      'instagramUsername': instance.instagramUsername,
      'totalCollections': instance.totalCollections,
      'totalLikes': instance.totalLikes,
      'totalPhotos': instance.totalPhotos,
      'acceptedTos': instance.acceptedTos,
      'forHire': instance.forHire,
      'social': instance.social,
    };

_$UserLinksImpl _$$UserLinksImplFromJson(Map<String, dynamic> json) =>
    _$UserLinksImpl(
      self: json['self'] as String?,
      html: json['html'] as String?,
      photos: json['photos'] as String?,
      likes: json['likes'] as String?,
      portfolio: json['portfolio'] as String?,
      following: json['following'] as String?,
      followers: json['followers'] as String?,
    );

Map<String, dynamic> _$$UserLinksImplToJson(_$UserLinksImpl instance) =>
    <String, dynamic>{
      'self': instance.self,
      'html': instance.html,
      'photos': instance.photos,
      'likes': instance.likes,
      'portfolio': instance.portfolio,
      'following': instance.following,
      'followers': instance.followers,
    };

_$ProfileImageImpl _$$ProfileImageImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImageImpl(
      small: json['small'] as String?,
      medium: json['medium'] as String?,
      large: json['large'] as String?,
    );

Map<String, dynamic> _$$ProfileImageImplToJson(_$ProfileImageImpl instance) =>
    <String, dynamic>{
      'small': instance.small,
      'medium': instance.medium,
      'large': instance.large,
    };

_$SocialImpl _$$SocialImplFromJson(Map<String, dynamic> json) => _$SocialImpl(
      instagramUsername: json['instagramUsername'] as String?,
      portfolioUrl: json['portfolioUrl'] as String?,
      twitterUsername: json['twitterUsername'] as String?,
      paypalEmail: json['paypalEmail'] as String?,
    );

Map<String, dynamic> _$$SocialImplToJson(_$SocialImpl instance) =>
    <String, dynamic>{
      'instagramUsername': instance.instagramUsername,
      'portfolioUrl': instance.portfolioUrl,
      'twitterUsername': instance.twitterUsername,
      'paypalEmail': instance.paypalEmail,
    };
