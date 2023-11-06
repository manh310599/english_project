import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:english_project/app/common/api_status.dart';
import 'package:english_project/app/common/core/abs_repo/image_api_repo.dart';
import 'package:english_project/app/common/model/image_from_text.dart';
import 'package:english_project/app/common/model/translate_model.dart';
import 'package:english_project/app/common/translate_api.dart';
import 'package:english_project/depedence.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../api/repo/image_repo.dart';

part 'information_card_state.dart';
part 'information_card_cubit.freezed.dart';

class InformationCardCubit extends Cubit<InformationCardState> {
  InformationCardCubit() : super(const InformationCardState(apiStatus: ApiStatus.init));

  final AbsImageRepo imageRepo = getIt();

  Future<void> getImage(String? query) async {
    if(query!.isNotEmpty){
      emit(state.copyWith(apiStatus: ApiStatus.loading,));
      try{
        final dataImage = await imageRepo.imageFromTextRepo(
          keyWord:  query,
          perPage: 20,
        );

        emit(state.copyWith(apiStatus: ApiStatus.success,imageFromText: dataImage));
      }
      catch(e){
        emit(state.copyWith(apiStatus: ApiStatus.fail,));
      }
    }
  }
  Future<void> searchWord (String? query) async {
    if(query!.isNotEmpty){
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

  void selectImage(int select){
    emit(state.copyWith(itemSelect: select,filePath: null));
  }
  Future<void> selectImageFromGradle() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,

    );
    if(pickedFile!.path.isNotEmptyAndNotNull) {
      emit(state.copyWith(filePath: pickedFile.path,itemSelect: null));
    }
  }
}
