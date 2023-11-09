part of 'information_card_cubit.dart';

@freezed
class InformationCardState with _$InformationCardState {
  const InformationCardState._();

  const factory InformationCardState({
    @Default(ApiStatus.init) ApiStatus? apiStatus,
    @Default(null) Translate? translate,
    @Default(null) ImageFromText? imageFromText,
    @Default(0) int? itemSelect,
    @Default(null) String? filePath,
  }) = _InformationCardState;
}
