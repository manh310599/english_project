part of 'pdf_cubit.dart';

enum PDFLoading {
  start,
  loading,
  loaded,
  error,
}


@freezed
class PdfState with _$PdfState {
  const PdfState._();

  const factory PdfState({
    @Default(null) File? path,
    @Default(null) String? content,
    @Default(PDFLoading.start) PDFLoading pdfLoading,
  }) = _PdfState;
}
