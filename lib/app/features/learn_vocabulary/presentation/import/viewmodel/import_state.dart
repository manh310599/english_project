part of 'import_cubit.dart';

@freezed
class ImportState with _$ImportState {
  const ImportState._();

  const factory ImportState({
    @Default(ExportImportFile.init) ExportImportFile exportImportFile,
    @Default(null) List<List<dynamic>>? data,
  }) = _ImportState;
}
