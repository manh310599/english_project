import 'package:freezed_annotation/freezed_annotation.dart';

import 'articles_model.dart';

part 'bbc_news_model.freezed.dart';

part 'bbc_news_model.g.dart';

@freezed
class BBCNewModel with _$BBCNewModel {
  const factory BBCNewModel({
    String? status,
    int? totalResults,
    List<Articles>? articles,
  }) = _BBCNewModel;

  factory BBCNewModel.fromJson(Map<String, Object?> json) =>
      _$BBCNewModelFromJson(json);
}



@freezed
class Source with _$Source {
  const factory Source({
    String? id,
    String? name,
  }) = _Source;

  factory Source.fromJson(Map<String, Object?> json) => _$SourceFromJson(json);
}
