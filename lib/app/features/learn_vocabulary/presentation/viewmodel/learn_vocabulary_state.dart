part of 'learn_vocabulary_cubit.dart';

@freezed
class LearnVocabularyState with _$LearnVocabularyState {
  const LearnVocabularyState._();

  const factory LearnVocabularyState({
    @Default(null) List<StorageWord?>? data,
    @Default(null) List<Words?>? words,
    @Default(null) bool? addOrCourse,
    @Default(ApiStatus.init) ApiStatus? apiStatus,
    @Default(null) BannerAd? bannerAd,
    @Default(true) bool? tutorial,
  }) = _LearnVocabularyState;
}
