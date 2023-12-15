import 'package:freezed_annotation/freezed_annotation.dart';

part 'translate_model.freezed.dart';

part 'translate_model.g.dart';

@freezed
class Translate with _$Translate {
  const factory Translate({
    List<Sentence>? sentences,
    List<Dict>? dict,
    String? src,
  }) = _Translate;

  factory Translate.fromJson(Map<String, dynamic> json) =>
      _$TranslateFromJson(json);
}

@freezed
class Dict with _$Dict {
  const factory Dict({
    String? pos,
    List<String?>? terms,
    List<Entry>? entry,
    String? baseForm,
    int? posEnum,
  }) = _Dict;

  factory Dict.fromJson(Map<String, dynamic> json) => _$DictFromJson(json);
}

@freezed
class Entry with _$Entry {
  const factory Entry({
    String? word,
    List<String?>? reverseTranslation,
  }) = _Entry;

  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);
}

@freezed
class Sentence with _$Sentence {
  const factory Sentence({
    String? trans,
    String? orig,
    int? backend,
  }) = _Sentence;

  factory Sentence.fromJson(Map<String, dynamic> json) =>
      _$SentenceFromJson(json);
}
