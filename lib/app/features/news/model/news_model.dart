import 'package:freezed_annotation/freezed_annotation.dart';

import 'articles_model.dart';

part 'news_model.freezed.dart';

part 'news_model.g.dart';

@freezed
class NewModel with _$NewModel {
  const factory NewModel({
    String? status,
    int? totalResults,
    List<Articles>? articles,
  }) = _NewModel;

  factory NewModel.fromJson(Map<String, dynamic> json) =>
      _$NewModelFromJson(json);
}



@freezed
class Source with _$Source {
  const factory Source({
    String? id,
    String? name,
  }) = _Source;

  factory Source.fromJson(Map<String, Object?> json) => _$SourceFromJson(json);
}
