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

  Future<void> getListWordsById(int id,) async {
    final data = await queryDatabase.getAllFromWordByStorage(id);
    List<Words?>? list = [];
    data?.forEach((element) {
      list.add(Words.fromJson(element));
    });

    emit(state.copyWith(data: list));
  }

  void setPage(int index) {
    emit(state.copyWith(min: index * 20));
  }
}
