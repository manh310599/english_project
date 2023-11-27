part of 'export_cubit.dart';

enum ExportImportFile {
  init,
  success,
  error,
  loading,
  loaded,
}

@freezed
class ExportState with _$ExportState {
  const ExportState._();

  const factory ExportState({
    @Default(ExportImportFile.init) ExportImportFile exportImportFile,
    @Default(null) List<StorageWord?>? data,
  }) = _ExportState;
}
