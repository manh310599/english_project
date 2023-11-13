import 'package:awesome_dialog/awesome_dialog.dart';
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

import '../../database/query_database.dart';
import '../../model/storage_database.dart';

part 'information_card_cubit.freezed.dart';

part 'information_card_state.dart';

class InformationCardCubit extends Cubit<InformationCardState> {
  InformationCardCubit()
      : super(const InformationCardState(apiStatus: ApiStatus.init));

  final AbsImageRepo imageRepo = getIt();

  QueryDatabase queryDatabase = QueryDatabase();

  Future<void> getImage(String? query) async {
    if (query!.isNotEmpty) {
      emit(state.copyWith(
        apiStatus: ApiStatus.loading,
      ));
      try {
        final dataImage = await imageRepo.imageFromTextRepo(
          keyWord: query,
          perPage: 20,
        );

        emit(state.copyWith(
            apiStatus: ApiStatus.success, imageFromText: dataImage));
      } catch (e) {
        emit(state.copyWith(
          apiStatus: ApiStatus.fail,
        ));
      }
    }
  }

  Future<void> searchWord(String? query) async {
    final resultData = await queryDatabase.getAllFromStorageWord();
    List<StorageWord?> list = [];
    resultData?.forEach((element) {
      list.add(StorageWord.fromJson(element));
    });
    if (query!.isNotEmpty) {
      await Future.delayed(const Duration(seconds: 1));
      final result = await translate(query);
      if (result != null) {
        emit(state.copyWith(
            translate: result, data: list, apiStatus: ApiStatus.loaded));
        getImage(query);
      } else {
        emit(state.copyWith(apiStatus: ApiStatus.fail));
      }
    }
  }

  void selectImage(int select) {
    emit(state.copyWith(itemSelect: select, filePath: null));
  }

  Future<void> selectImageFromGradle() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile!.path.isNotEmptyAndNotNull) {
      emit(state.copyWith(filePath: pickedFile.path, itemSelect: null));
    }
  }

  changeId(
    int? id,
  ) {
    emit(state.copyWith(idStorageWord: id));
  }

  Future<void> saveWord(int? i, context) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));
    int? result = await queryDatabase.addWords(
      state.translate?.sentences?[0].orig,
      state.imageFromText!.results?[state.itemSelect!].urls?.small,
      null,
      state.translate?.dict?[0].terms.toString(),
      DateTime.now().millisecondsSinceEpoch,
      DateTime.now().millisecondsSinceEpoch,
      1.3,
      i,
    );
    if (result == -1) {
      emit(state.copyWith(apiStatus: ApiStatus.fail));
      AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        title: 'thêm dữ liệu thất bại',
        btnOkOnPress: () {},
      ).show();
    } else {
      emit(state.copyWith(apiStatus: ApiStatus.success));
      AwesomeDialog(
        context: context,
        dialogType: DialogType.success,
        title: 'thêm dữ liệu thành công',
        btnOkOnPress: () {},
      ).show();
    }
  }
}
