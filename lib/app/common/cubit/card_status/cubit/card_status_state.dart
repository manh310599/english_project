part of 'card_status_cubit.dart';

@freezed
class CardStatusState with _$CardStatusState {
  const CardStatusState._();

  const factory CardStatusState({
    @Default(0) int deck,
    @Default(false) bool showChoice,
  }) = _CardStatusState;
}
