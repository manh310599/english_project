// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flash_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlashCardModelImpl _$$FlashCardModelImplFromJson(Map<String, dynamic> json) =>
    _$FlashCardModelImpl(
      front: FrontModel.fromJson(json['front'] as Map<String, dynamic>),
      back: BackModel.fromJson(json['back'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FlashCardModelImplToJson(
        _$FlashCardModelImpl instance) =>
    <String, dynamic>{
      'front': instance.front,
      'back': instance.back,
    };

_$FrontModelImpl _$$FrontModelImplFromJson(Map<String, dynamic> json) =>
    _$FrontModelImpl(
      vocabulary: json['vocabulary'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$FrontModelImplToJson(_$FrontModelImpl instance) =>
    <String, dynamic>{
      'vocabulary': instance.vocabulary,
      'image': instance.image,
    };

_$BackModelImpl _$$BackModelImplFromJson(Map<String, dynamic> json) =>
    _$BackModelImpl(
      vocabulary: json['vocabulary'] as String,
      image: json['image'] as String,
      meaning: json['meaning'] as String,
    );

Map<String, dynamic> _$$BackModelImplToJson(_$BackModelImpl instance) =>
    <String, dynamic>{
      'vocabulary': instance.vocabulary,
      'image': instance.image,
      'meaning': instance.meaning,
    };
