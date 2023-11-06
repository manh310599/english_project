part of 'news_cubit.dart';

@freezed
class NewsState with _$NewsState {
  const NewsState._();

  const factory NewsState({
    @Default(ApiStatus.init) ApiStatus? apiStatus,
    @Default(null) NewModel? news,
    @Default(0) int? min,
  }) = _NewsState;
}
