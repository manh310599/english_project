part of 'information_card_cubit.dart';

@freezed
class InformationCardState with _$InformationCardState {
  const InformationCardState._();

  const factory InformationCardState({
    @Default(ApiStatus.init) ApiStatus? apiStatus,
    @Default(null) String? meaning,
    @Default(null) ImageFromText? imageFromText,
  }) = _InformationCardState;
}
