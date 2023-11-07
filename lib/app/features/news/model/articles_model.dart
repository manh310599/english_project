import 'package:freezed_annotation/freezed_annotation.dart';

import 'news_model.dart';
part 'articles_model.g.dart';

part 'articles_model.freezed.dart';

@freezed
class   Articles with _$Articles {
  const factory Articles({
    Source? source,
    String? author,
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    String? publishedAt,
    String? content,
  }) = _Articles;

  factory Articles.fromJson(Map<String, Object?> json) =>
      _$ArticlesFromJson(json);
}