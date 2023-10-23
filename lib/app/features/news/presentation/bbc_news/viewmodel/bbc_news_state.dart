part of 'bbc_news_cubit.dart';

@freezed
class BbcNewsState with _$BbcNewsState {
  const BbcNewsState._();

  const factory BbcNewsState({
    @Default(null) BBCNewModel? bbcNewModel,
  }) = _BbcNewsState;
}
