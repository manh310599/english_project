// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_database.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StorageImpl _$$StorageImplFromJson(Map<String, dynamic> json) =>
    _$StorageImpl(
      idNF: json['idNF'] as int?,
      idSW: json['idSW'] as int?,
    );

Map<String, dynamic> _$$StorageImplToJson(_$StorageImpl instance) =>
    <String, dynamic>{
      'idNF': instance.idNF,
      'idSW': instance.idSW,
    };

_$NewsFavoriteImpl _$$NewsFavoriteImplFromJson(Map<String, dynamic> json) =>
    _$NewsFavoriteImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      idNew: json['idNew'] as int?,
    );

Map<String, dynamic> _$$NewsFavoriteImplToJson(_$NewsFavoriteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'idNew': instance.idNew,
    };

_$NewsImpl _$$NewsImplFromJson(Map<String, dynamic> json) => _$NewsImpl(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$NewsImplToJson(_$NewsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'imageUrl': instance.imageUrl,
    };

_$StorageWordsImpl _$$StorageWordsImplFromJson(Map<String, dynamic> json) =>
    _$StorageWordsImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      idWord: json['idWord'] as int?,
    );

Map<String, dynamic> _$$StorageWordsImplToJson(_$StorageWordsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'idWord': instance.idWord,
    };

_$WordsImpl _$$WordsImplFromJson(Map<String, dynamic> json) => _$WordsImpl(
      id: json['id'] as int?,
      word: json['word'] as String?,
      image: json['image'] as String?,
      meaning: json['meaning'] as String?,
    );

Map<String, dynamic> _$$WordsImplToJson(_$WordsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'word': instance.word,
      'image': instance.image,
      'meaning': instance.meaning,
    };
