import 'dart:convert';
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'storage_database.freezed.dart';

part 'storage_database.g.dart';

@freezed
class StorageWord with _$StorageWord {
  const factory StorageWord({
    final int? id,
    final String? name,
  }) = _StorageWord;

  factory StorageWord.fromJson(Map<String, dynamic> json) =>
      _$StorageWordFromJson(json);
}


@freezed
class News with _$News {
  const factory News({
    final int? id,
    final String? title,
    final String? description,
    final String? url,
    final String? image,

  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}

@freezed
class Words with _$Words {
  const factory Words({
    final String? word,
    final String? image,
    String? assets_image,
    final String? mean,
    final int? start_time,
    final int? end_time,
    final double? EF,
    final int? id,
    final int? checkNew,
    final int? lastChoice,
    final int? interval,
    final double? ease,
  }) = _Words;

  factory Words.fromJson(Map<String, dynamic> json) => _$WordsFromJson(json);
}


class Uint8ListConverter implements JsonConverter<Uint8List?, List<int>?> {
  const Uint8ListConverter();

  @override
  Uint8List? fromJson(List<int>? json) {
    return json == null ? null : Uint8List.fromList(json);
  }

  @override
  List<int>? toJson(Uint8List? object) {
    return object?.toList();
  }
}