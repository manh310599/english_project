import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:read_pdf_text/read_pdf_text.dart';

part 'pdf_state.dart';
part 'pdf_cubit.freezed.dart';

class PdfCubit extends Cubit<PdfState> {
  PdfCubit() : super(const PdfState());

  Future<void> loadPath() async {
    emit(state.copyWith(pdfLoading: PDFLoading.start));
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      emit(state.copyWith(pdfLoading: PDFLoading.loading));
      File file = File(result.files.single.path!);
      emit(state.copyWith(path: file));
      String text = "";
      try {
        text = await ReadPdfText.getPDFtext(file.path);
        emit(state.copyWith(content: text,pdfLoading: PDFLoading.loaded));
        emit(state.copyWith(pdfLoading: PDFLoading.stop));
      } on PlatformException {

        emit(state.copyWith(pdfLoading: PDFLoading.error));
        emit(state.copyWith(pdfLoading: PDFLoading.stop));
      }

    } else {
      // User canceled the picker
    }
  }

  changeSelect(String? text) {
    emit(state.copyWith(selectText: text));
  }
}
