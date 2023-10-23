// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TranslateImpl _$$TranslateImplFromJson(Map<String, dynamic> json) =>
    _$TranslateImpl(
      sentences: (json['sentences'] as List<dynamic>?)
          ?.map((e) => Sentence.fromJson(e as Map<String, dynamic>))
          .toList(),
      dict: (json['dict'] as List<dynamic>?)
          ?.map((e) => Dict.fromJson(e as Map<String, dynamic>))
          .toList(),
      src: json['src'] as String?,
    );

Map<String, dynamic> _$$TranslateImplToJson(_$TranslateImpl instance) =>
    <String, dynamic>{
      'sentences': instance.sentences,
      'dict': instance.dict,
      'src': instance.src,
    };

_$DictImpl _$$DictImplFromJson(Map<String, dynamic> json) => _$DictImpl(
      pos: json['pos'] as String?,
      terms:
          (json['terms'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      entry: (json['entry'] as List<dynamic>?)
          ?.map((e) => Entry.fromJson(e as Map<String, dynamic>))
          .toList(),
      baseForm: json['baseForm'] as String?,
      posEnum: json['posEnum'] as int?,
    );

Map<String, dynamic> _$$DictImplToJson(_$DictImpl instance) =>
    <String, dynamic>{
      'pos': instance.pos,
      'terms': instance.terms,
      'entry': instance.entry,
      'baseForm': instance.baseForm,
      'posEnum': instance.posEnum,
    };

_$EntryImpl _$$EntryImplFromJson(Map<String, dynamic> json) => _$EntryImpl(
      word: json['word'] as String?,
      reverseTranslation: (json['reverseTranslation'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$$EntryImplToJson(_$EntryImpl instance) =>
    <String, dynamic>{
      'word': instance.word,
      'reverseTranslation': instance.reverseTranslation,
    };

_$SentenceImpl _$$SentenceImplFromJson(Map<String, dynamic> json) =>
    _$SentenceImpl(
      trans: json['trans'] as String?,
      orig: json['orig'] as String?,
      backend: json['backend'] as int?,
    );

Map<String, dynamic> _$$SentenceImplToJson(_$SentenceImpl instance) =>
    <String, dynamic>{
      'trans': instance.trans,
      'orig': instance.orig,
      'backend': instance.backend,
    };
