import 'package:freezed_annotation/freezed_annotation.dart';

part 'storage_database.freezed.dart';

part 'storage_database.g.dart';

@freezed
class Storage with _$Storage {
  const factory Storage({
    final int? idNF,
    final int? idSW,
  }) = _Storage;

  factory Storage.fromJson(Map<String, dynamic> json) =>
      _$StorageFromJson(json);
}

@freezed
class NewsFavorite with _$NewsFavorite {
  const factory NewsFavorite({
    final int? id,
    final String? name,
    final int? idNew,
  }) = _NewsFavorite;

  factory NewsFavorite.fromJson(Map<String, dynamic> json) =>
      _$NewsFavoriteFromJson(json);
}

@freezed
class News with _$News {
  const factory News({
    final int? id,
    final String? title,
    final String? description,
    final String? url,
    final String? imageUrl,
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}

@freezed
class StorageWords with _$StorageWords {
  const factory StorageWords({
    final int? id,
    final String? name,
    final int? idWord,
  }) = _StorageWords;

  factory StorageWords.fromJson(Map<String, dynamic> json) =>
      _$StorageWordsFromJson(json);
}

@freezed
class Words with _$Words {
  const factory Words({
    final int? id,
    final String? word,
    final String? image,
    final String? meaning,
  }) = _Words;

  factory Words.fromJson(Map<String, dynamic> json) => _$WordsFromJson(json);
}
