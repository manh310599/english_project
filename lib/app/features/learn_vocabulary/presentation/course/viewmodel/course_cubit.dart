import 'package:awesome_dialog/awesome_dialog.dart';
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

  Future<void> getListWordsById(
    int id,
  ) async {
    final data = await queryDatabase.getAllFromWordByStorage(id);

    List<Words?>? list = [];
    data?.forEach((element) {
      list.add(Words.fromJson(element));
    });

    print(list);

    emit(state.copyWith(data: list));
  }

  void setPage(int index) {
    emit(state.copyWith(min: index * 20));
  }

  Future<void> deleteWord(String word, context) async {
    try {
      await queryDatabase.deleteWord(word);
      emit(state.copyWith(
          data:
              state.data?.where((element) => element?.word != word).toList()));
      AwesomeDialog(
        context: context,
        title: 'Xóa từ vựng thành công',
        btnOkText: 'Đóng',
        dialogType: DialogType.success,
        btnOkOnPress: () {},
      ).show();
    } catch (_) {
      AwesomeDialog(
        context: context,
        title: 'Xóa từ vựng thành công',
        btnOkText: 'Đóng',
        dialogType: DialogType.error,
        btnOkOnPress: () {},
      ).show();
    }
  }
}
