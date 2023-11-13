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
class NewsFavorite with _$NewsFavorite {
  const factory NewsFavorite({
    final int? id,
    final String? name,
  }) = _NewsFavorite;

  // factory NewsFavorite.fromJson(List<Map<String, Object?>>? json) =>
  //     _$NewsFavoriteFromJson(json);

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
    final String? image,
    final int? NF,
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}

@freezed
class Words with _$Words {
  const factory Words({
    final String? word,
    final String? image,
    @Uint8ListConverter() Uint8List? assets_image,
    final String? mean,
    final int? start_time,
    final int? end_time,
    final double? EF,
    final int? id,
  }) = _Words;

  factory Words.fromJson(Map<String, dynamic> json) => _$WordsFromJson(json);
}


class Uint8ListConverter implements JsonConverter<Uint8List?, dynamic> {
  const Uint8ListConverter();

  @override
  Uint8List? fromJson(dynamic json) {
    if (json == null) return null;

    try {
      // Kiểm tra xem json có phải là List<int> không
      if (json is List<int>) {
        return Uint8List.fromList(json);
      } else if (json is String) {
        // Decode từ Base64 nếu là một chuỗi
        List<int> decoded = base64.decode(json);
        return Uint8List.fromList(decoded);
      } else {
        print('Kiểu dữ liệu không được hỗ trợ: ${json.runtimeType}');
        return null;
      }
    } catch (e) {
      print('Lỗi khi giải mã Uint8List từ JSON: $e');
      return null;
    }
  }

  @override
  dynamic toJson(Uint8List? object) {
    if (object == null) return null;

    try {
      // Encode sang Base64
      String base64String = base64.encode(object);
      return base64String;
    } catch (e) {
      print('Lỗi khi mã hóa Uint8List sang JSON: $e');
      return null;
    }
  }
}