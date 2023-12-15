import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pdf_cubit.freezed.dart';

part 'pdf_state.dart';

class PdfCubit extends Cubit<PdfState> {
  PdfCubit() : super(const PdfState());

  String? temp;

  Future<void> loadPath() async {
    emit(state.copyWith(pdfLoading: PDFLoading.start));
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      emit(state.copyWith(pdfLoading: PDFLoading.loading));
      File file = File(result.files.single.path!);
      emit(state.copyWith(path: file));
    } else {
      emit(state.copyWith(pdfLoading: PDFLoading.error));
      emit(state.copyWith(pdfLoading: PDFLoading.stop));
    }
  }

  loaded() {
    emit(state.copyWith(pdfLoading: PDFLoading.loaded));
    emit(state.copyWith(pdfLoading: PDFLoading.stop));
  }

  loadFail() {
    emit(state.copyWith(pdfLoading: PDFLoading.error));
    emit(state.copyWith(pdfLoading: PDFLoading.stop));
  }

  changSelect(String? text) {
    emit(state.copyWith(selectText: text));
  }
}
