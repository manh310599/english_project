import 'package:bloc/bloc.dart';
import 'package:english_project/app/common/model/storage_database.dart';
import 'package:english_project/app/features/learn_vocabulary/core/conver_to_csv.dart';
import 'package:english_project/app/features/learn_vocabulary/core/read_write_file.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../common/database/query_database.dart';

part 'export_cubit.freezed.dart';

part 'export_state.dart';

class ExportCubit extends Cubit<ExportState> {
  ExportCubit() : super(const ExportState());

  QueryDatabase queryDatabase = QueryDatabase();

  Future<void> getStoreWord() async {
    final data = await queryDatabase.getAllFromStorageWord();

    emit(state.copyWith(
      data: data,
    ));
  }

  Future<void> exportCSV(int? id, String? name) async {
    final words = await queryDatabase.getAllFromWordByStorage(id);
    try {
      if (words?.isEmpty == true) {
        emit(state.copyWith(exportImportFile: ExportImportFile.error));
        emit(state.copyWith(exportImportFile: ExportImportFile.loaded));
      } else {
        emit(state.copyWith(exportImportFile: ExportImportFile.loading));

        final data = await queryDatabase.getStoreWordById(id);

        final csv = mapListToCsv(data);
        await writeCounter(csv, name).then(
          (value) {
            emit(state.copyWith(exportImportFile: ExportImportFile.success));
          },
        );
        emit(state.copyWith(exportImportFile: ExportImportFile.loaded));
      }
    } catch (e) {
      print(e);
      emit(state.copyWith(exportImportFile: ExportImportFile.error));
      emit(state.copyWith(exportImportFile: ExportImportFile.loaded));
    }
  }
}
