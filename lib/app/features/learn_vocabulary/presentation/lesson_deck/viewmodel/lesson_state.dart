part of 'lesson_cubit.dart';

@freezed
class LessonState with _$LessonState {
  const LessonState._();
  const factory LessonState({
    @Default(ApiStatus.init) ApiStatus? apiStatus,
    @Default(null) List<Words?>? words,
    @Default(false) bool? checkBackCard,
    @Default(0) int? indexInLesson,
    @Default(null) String? againTime,
    @Default(null) String? hardTime,
    @Default(null) String? goodTime,
    @Default(null) String? easyTime,
    @Default(null) BannerAd? bannerAd,
}) = _LessonState;
  
}
