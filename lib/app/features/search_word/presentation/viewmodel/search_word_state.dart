part of 'search_word_cubit.dart';

@freezed
class SearchWordState with _$SearchWordState {
  const SearchWordState._();

  const factory SearchWordState({
    @Default(null) ApiStatus? apiStatus,
    @Default(null) Translate? translate,
    @Default(null) List<StorageWord?>? data,
  }) = _SearchWordState;
}
