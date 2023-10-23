
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flash_card_model.freezed.dart';
part 'flash_card_model.g.dart';


@freezed
class FlashCardModel with _$FlashCardModel {

  const  factory FlashCardModel({
    required FrontModel front,
    required BackModel back,
}) = _FlashCardModel;


  factory FlashCardModel.fromJson(Map<String, dynamic> json) =>
      _$FlashCardModelFromJson(json);
}

@freezed
class FrontModel with _$FrontModel {

  const factory FrontModel({
    required String vocabulary,
    required String image,
}) = _FrontModel;


  factory FrontModel.fromJson(Map<String, dynamic> json) =>
      _$FrontModelFromJson(json);
}

@freezed
class BackModel with _$BackModel {

  const factory BackModel({
    required String vocabulary,
    required String image,
    required String meaning,
}) = _BackModel;


  factory BackModel.fromJson(Map<String, dynamic> json) =>
      _$BackModelFromJson(json);
}
