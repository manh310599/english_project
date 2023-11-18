import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bloc/bloc.dart';
import 'package:english_project/app/common/api_status.dart';
import 'package:english_project/app/common/model/storage_database.dart';
import 'package:english_project/app/common/rounding_number.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/database/query_database.dart';

part 'learn_vocabulary_cubit.freezed.dart';

part 'learn_vocabulary_state.dart';

class LearnVocabularyCubit extends Cubit<LearnVocabularyState> {
  LearnVocabularyCubit() : super(const LearnVocabularyState());

  QueryDatabase queryDatabase = QueryDatabase();
  TextEditingController controller = TextEditingController();

  Future<void> getStoreWord() async {
    final data = await queryDatabase.getAllFromStorageWord();

    emit(state.copyWith(data: data, addOrCourse: true));
  }

  Future<void> addStoreWord(context) async {
    final result = await queryDatabase.addStoreWord(controller.text);
    print('thử $result');
    if (result != -1) {
      final data = await queryDatabase.getAllFromStorageWord();

      emit(state.copyWith(data: data, addOrCourse: false));
      AwesomeDialog(
        context: context,
        dialogType: DialogType.success,
        title: 'Đã thêm khóa học thành công',
        btnOkOnPress: () {},
      ).show();
    } else {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        title: 'Thêm khóa học thất bại',
        btnOkOnPress: () {},
      ).show();
    }
  }

  Future<void> deleteStoreWord(context, id) async {
    final result = await queryDatabase.deleteStoreWord(id);
    if (result != -1) {
      final data = await queryDatabase.getAllFromStorageWord();

      emit(state.copyWith(data: data));
      AwesomeDialog(
        context: context,
        dialogType: DialogType.success,
        title: 'Đã xóa khóa học thành công',
        btnOkOnPress: () {},
      ).show();
    } else {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        title: 'Xóa khóa học thất bại',
        btnOkOnPress: () {},
      ).show();
    }
  }

  Future<void> getListWordsByDay(int id, BuildContext context) async {
    int date =
        roundTime(DateTime.now().millisecondsSinceEpoch);

    final data = await queryDatabase.getAllFromDate(date, id);
    print(data);
    List<Words?>? list = [];
    data?.forEach((element) {
      list.add(Words.fromJson(element));
    });

    emit(state.copyWith(words: list, apiStatus: ApiStatus.loaded));
  }



  refreshStatus() {
    emit(state.copyWith(apiStatus: ApiStatus.init));
  }
}
