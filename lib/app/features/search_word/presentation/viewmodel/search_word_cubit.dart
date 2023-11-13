import 'package:bloc/bloc.dart';
import 'package:english_project/app/common/api_status.dart';
import 'package:english_project/app/common/database/query_database.dart';
import 'package:english_project/app/common/model/storage_database.dart';
import 'package:english_project/app/common/model/translate_model.dart';
import 'package:english_project/app/common/translate_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_word_cubit.freezed.dart';

part 'search_word_state.dart';

class SearchWordCubit extends Cubit<SearchWordState> {
  SearchWordCubit() : super(const SearchWordState());

  QueryDatabase queryDatabase = QueryDatabase();

  Future<void> searchWord(String? query) async {
    await Future.delayed(const Duration(seconds: 1));
    final result = await translate(query);
    final resultData = await queryDatabase.getAllFromStorageWord();
    List<StorageWord?> list = [];
    resultData?.forEach((element) {
      list.add(StorageWord.fromJson(element));
    });
    if (result != null) {
      emit(state.copyWith(
        translate: result,
        apiStatus: ApiStatus.success,
        data: list,
      ));
    } else {
      emit(state.copyWith(apiStatus: ApiStatus.fail));
    }
  }
}
