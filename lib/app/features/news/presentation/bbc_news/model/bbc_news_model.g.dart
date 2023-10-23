// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bbc_news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BBCNewModelImpl _$$BBCNewModelImplFromJson(Map<String, dynamic> json) =>
    _$BBCNewModelImpl(
      status: json['status'] as String?,
      totalResults: json['totalResults'] as int?,
      articles: (json['articles'] as List<dynamic>?)
          ?.map((e) => Articles.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BBCNewModelImplToJson(_$BBCNewModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };

_$SourceImpl _$$SourceImplFromJson(Map<String, dynamic> json) => _$SourceImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$SourceImplToJson(_$SourceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
