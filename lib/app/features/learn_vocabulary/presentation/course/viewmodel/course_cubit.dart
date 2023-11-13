import 'package:bloc/bloc.dart';
import 'package:english_project/app/common/api_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../common/database/query_database.dart';
import '../../../../../common/model/storage_database.dart';

part 'course_cubit.freezed.dart';

part 'course_state.dart';

class CourseCubit extends Cubit<CourseState> {
  CourseCubit() : super(const CourseState());

  QueryDatabase queryDatabase = QueryDatabase();

  Future<void> getListWord(words) async {
    emit(state.copyWith(data: words));
  }
}
