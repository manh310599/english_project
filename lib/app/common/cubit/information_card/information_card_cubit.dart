import 'package:bloc/bloc.dart';
import 'package:english_project/app/common/api_status.dart';
import 'package:english_project/app/common/core/abs_repo/image_api_repo.dart';
import 'package:english_project/app/common/model/image_from_text.dart';
import 'package:english_project/depedence.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../api/repo/image_repo.dart';

part 'information_card_state.dart';
part 'information_card_cubit.freezed.dart';

class InformationCardCubit extends Cubit<InformationCardState> {
  InformationCardCubit() : super(const InformationCardState(apiStatus: ApiStatus.init));

  final AbsImageRepo imageRepo = getIt();

  Future<void> getImage() async {
    emit(state.copyWith(apiStatus: ApiStatus.loading,));

    try{
      final dataImage = await imageRepo.imageFromTextRepo(
        keyWord:  'cat',
        perPage: 1,
      );

      emit(state.copyWith(apiStatus: ApiStatus.success,imageFromText: dataImage));
    }
    catch(e){
      emit(state.copyWith(apiStatus: ApiStatus.fail,));
    }
  }
}
