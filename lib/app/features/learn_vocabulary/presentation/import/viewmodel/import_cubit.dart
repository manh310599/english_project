import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:english_project/app/common/model/storage_database.dart';
import 'package:english_project/app/features/learn_vocabulary/presentation/export/viewmodel/export_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velocity_x/velocity_x.dart';

part 'import_state.dart';
part 'import_cubit.freezed.dart';

class ImportCubit extends Cubit<ImportState> {
  ImportCubit() : super(const ImportState());

  Future<void> getData(List<List<dynamic>>? data) async {
    emit(state.copyWith(data: data));
    convertData(data);
  }

  void convertData(List<List<dynamic>>? data) {
    final List<InnerJoinStorageWordAndWord> innerJohn = [];
    data?.forEach((element) {
      innerJohn.add(InnerJoinStorageWordAndWord.fromJson());
    });
  }
}
