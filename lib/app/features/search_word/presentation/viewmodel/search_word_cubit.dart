import 'package:bloc/bloc.dart';
import 'package:english_project/app/common/api_status.dart';
import 'package:english_project/app/common/model/translate_model.dart';
import 'package:english_project/app/common/translate_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_word_state.dart';
part 'search_word_cubit.freezed.dart';

class SearchWordCubit extends Cubit<SearchWordState> {
  SearchWordCubit() : super(const SearchWordState());

  Future<void> searchWord (String? query) async {
    await Future.delayed(const Duration(seconds: 1));
    final result = await translate(query);
    if(result != null){
      emit(state.copyWith(translate: result,apiStatus: ApiStatus.success));
    }
    else {
      emit(state.copyWith(apiStatus: ApiStatus.fail));
    }
  }
}
