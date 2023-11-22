part of 'favorite_news_cubit.dart';

@freezed
class FavoriteNewsState with _$FavoriteNewsState {
  const FavoriteNewsState._();
  const factory FavoriteNewsState(
  {
    @Default(ApiStatus.init) ApiStatus? apiStatus,
    @Default(null) List<News?>? news,
}
      ) = _FavoriteNewsState;
}
