import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

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

    if (query!.isNotEmpty) {
      await Future.delayed(const Duration(seconds: 1));
      final result = await translate(query);
      if (result != null) {
        emit(state.copyWith(
            translate: result, data: resultData, apiStatus: ApiStatus.loaded));
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
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery, imageQuality: 25);
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
    final list = await queryDatabase.getAllFromStorageWord();

    emit(state.copyWith(apiStatus: ApiStatus.loading));
    int? result;

    if (list.isNotEmpty) {
      List<String?>? mean = [];
      state.translate?.dict?[0].terms?.forEach((element) {
        mean.add(element);
      });

      mean.add(state.translate?.sentences?[0].trans);
      if (state.itemSelect != null) {
        final now = DateTime.now();
        result = await queryDatabase.addWords(
          state.translate?.sentences?[0].orig,
          state.imageFromText!.results?[state.itemSelect!].urls?.small,
          null,
          mean.toString(),
          0,
          DateTime(now.year, now.month, now.day, 0, 0, 0, 0, 0)
              .millisecondsSinceEpoch,
          1.3,
          i,
        );
      } else {
        File imageFile = File(state.filePath!);
        Uint8List imageBytes = await imageFile.readAsBytes();

        final base64String = base64Encode(imageBytes);
        result = await queryDatabase.addWords(
          state.translate?.sentences?[0].orig,
          null,
          base64String,
          mean.toString(),
          0,
          DateTime.now().millisecondsSinceEpoch,
          1.3,
          i,
        );
      }

      if (result == -1) {
        emit(state.copyWith(apiStatus: ApiStatus.fail));
        AwesomeDialog(
          context: context,
          dialogType: DialogType.error,
          title: 'thêm dữ liệu thất bại hãy đảm bảo bạn không'
              ' thêm lại từ vựng đã có hoặc có ít nhất 1 bộ bài học',
          btnOkOnPress: () {},
        ).show();
        emit(state.copyWith(apiStatus: ApiStatus.success));
      } else {
        emit(state.copyWith(apiStatus: ApiStatus.success));
        AwesomeDialog(
          context: context,
          dialogType: DialogType.success,
          title: 'thêm dữ liệu thành công',
          btnOkOnPress: () {},
        ).show();
      }
    } else {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        title: 'Hãy thêm vào ít nhất 1 khóa học',
        btnOkOnPress: () {},
      ).show();
    }
  }

  enableSave() {
    emit(state.copyWith(check: true));
  }

  disibleSave() {
    emit(state.copyWith(check: false));
  }
}
