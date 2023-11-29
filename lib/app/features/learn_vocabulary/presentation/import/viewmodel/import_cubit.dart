import 'package:bloc/bloc.dart';
import 'package:english_project/app/common/model/storage_database.dart';
import 'package:english_project/app/features/learn_vocabulary/presentation/export/viewmodel/export_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../common/database/query_database.dart';

part 'import_cubit.freezed.dart';

part 'import_state.dart';

class ImportCubit extends Cubit<ImportState> {
  ImportCubit() : super(const ImportState());

  QueryDatabase queryDatabase = QueryDatabase();

  Future<void> getData(List<List<dynamic>>? data,String? name) async {
    emit(state.copyWith(exportImportFile: ExportImportFile.loading));
    emit(state.copyWith(data: data));
   await convertData(data,name);
  }

  Future<void> convertData(List<List<dynamic>>? data,String? name) async {
    final List<InnerJoinStorageWordAndWord> innerJohn = [];
    try{
      data?.sublist(1).forEach((element) {
        innerJohn.add(InnerJoinStorageWordAndWord.fromList(element));
      });
      final result = await queryDatabase.addFromCSV(name,innerJohn);
      if(result == 0){
        emit(state.copyWith(exportImportFile: ExportImportFile.success));
        emit(state.copyWith(exportImportFile: ExportImportFile.loaded));
      }else{
        emit(state.copyWith(exportImportFile: ExportImportFile.error));
      }

    }catch(_){
      emit(state.copyWith(exportImportFile: ExportImportFile.error));
    }

  }
}
