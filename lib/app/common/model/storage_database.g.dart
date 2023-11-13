// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_database.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StorageWordImpl _$$StorageWordImplFromJson(Map<String, dynamic> json) =>
    _$StorageWordImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$StorageWordImplToJson(_$StorageWordImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$NewsFavoriteImpl _$$NewsFavoriteImplFromJson(Map<String, dynamic> json) =>
    _$NewsFavoriteImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$NewsFavoriteImplToJson(_$NewsFavoriteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$NewsImpl _$$NewsImplFromJson(Map<String, dynamic> json) => _$NewsImpl(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      image: json['image'] as String?,
      NF: json['NF'] as int?,
    );

Map<String, dynamic> _$$NewsImplToJson(_$NewsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'image': instance.image,
      'NF': instance.NF,
    };

_$WordsImpl _$$WordsImplFromJson(Map<String, dynamic> json) => _$WordsImpl(
      word: json['word'] as String?,
      image: json['image'] as String?,
      assets_image: const Uint8ListConverter().fromJson(json['assets_image']),
      mean: json['mean'] as String?,
      start_time: json['start_time'] as int?,
      end_time: json['end_time'] as int?,
      EF: (json['EF'] as num?)?.toDouble(),
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$WordsImplToJson(_$WordsImpl instance) =>
    <String, dynamic>{
      'word': instance.word,
      'image': instance.image,
      'assets_image': const Uint8ListConverter().toJson(instance.assets_image),
      'mean': instance.mean,
      'start_time': instance.start_time,
      'end_time': instance.end_time,
      'EF': instance.EF,
      'id': instance.id,
    };
