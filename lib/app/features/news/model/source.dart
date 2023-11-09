import 'package:freezed_annotation/freezed_annotation.dart';
part 'source.g.dart';

part 'source.freezed.dart';

@freezed
class Source with _$Source {
  const factory Source({
    String? id,
    String? name,
  }) = _Source;

  factory Source.fromJson(Map<String, Object?> json) => _$SourceFromJson(json);
}