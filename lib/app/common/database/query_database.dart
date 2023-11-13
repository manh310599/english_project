import 'dart:typed_data';

import 'package:english_project/app/common/database/query_database_abs.dart';
import 'package:english_project/app/common/database/storage_database.dart';

class QueryDatabase extends AbsQueryDatabase {
  final database = StorageDatabase.instance.initDB();

  ///////////////////select data///////////////////////////////////////////////////////////////
  @override
  Future<List<Map<String, Object?>>?> getAllFromWords() async {
    final data = await database;
    final test = await data?.rawQuery('select * from Words');

    return test;
  }

  @override
  Future<List<Map<String, Object?>>?> getAllFromStorageWord() async {
    final data = await database;
    final test = await data?.rawQuery('select * from StorageWord');

    return test;
  }

  @override
  Future<int?> addStoreWord(String name) async {
    // TODO: implement addStoreWord
    final data = await database;

    try {
      await data?.rawInsert('insert into StorageWord(name) values ("$name")');
      return 1;
    } catch (_) {
      return -1;
    }
  }

  @override
  Future<int?> deleteStoreWord(int id) async {
    final data = await database;
    try {
      await data?.rawDelete('delete from Words where id = $id');
      await data?.rawDelete('delete from StorageWord where id = $id');
      return 1;
    } catch (_) {
      return -1;
    }
  }

  @override
  Future<List<Map<String, Object?>>?> getAllFromWordByStorage(int? id) async {
    final data = await database;
    final test = await data?.rawQuery('select * from Words where id = $id');
    return test;
  }

  @override
  Future<int?> addWords(String? word,
      String? image,
      Uint8List? assetImage,
      String? mean,
      int? startTime,
      int? endTime,
      double? eF,
      int? id,) async {
    // TODO: implement addWords
    final data = await database;
    try {
      await data?.rawInsert(
          'insert into Words(word,image,mean,start_time,end_time,id) VALUES '
              '("$word","$image","$mean","$startTime","$endTime","$id")');
      return 1;
    } catch (e) {
        return -1;
    }


  }

  @override
  Future<List<Map<String, Object?>>?> getAllFromDate(int date,int id) async {
    final data = await database;
    final test = await data?.rawQuery('select * from Words where end_time < $date and id = $id');
    return test;
  }
}
