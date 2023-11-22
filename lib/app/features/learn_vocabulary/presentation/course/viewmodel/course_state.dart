part of 'course_cubit.dart';

@freezed
class CourseState with _$CourseState {
  const CourseState._();

  const factory CourseState({
    @Default(ApiStatus.init) ApiStatus? apiStatus,
    @Default(null) List<Words?>? data,
    @Default(0) int? min,
}) = _CourseState;

}
