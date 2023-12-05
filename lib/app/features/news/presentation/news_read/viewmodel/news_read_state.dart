part of 'news_read_cubit.dart';

@freezed
class NewsReadState with _$NewsReadState {
  const NewsReadState._();

  const factory NewsReadState({
    @Default(null) ContentBlocker? contentBlocker,
    @Default(null) InterstitialAd? interstitialAd,
    @Default(null) String? word,
    @Default(false) bool? loading,
  }) = _NewsReadState;
}
