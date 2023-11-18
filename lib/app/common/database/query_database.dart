import 'package:english_project/app/common/database/query_database_abs.dart';
import 'package:english_project/app/common/database/storage_database.dart';

import '../model/storage_database.dart';

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
  Future<List<StorageWord?>> getAllFromStorageWord() async {
    final data = await database;
    final test = await data?.rawQuery('select * from StorageWord');
    List<StorageWord?> list = [];
    await Future.forEach(test!, (element) async {
      list.add(StorageWord.fromJson(element));
    });
    print(list);
    return list;
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
      final test = await data?.rawDelete('delete from Words where id = $id');
      print(test);
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
  Future<int?> addWords(
    String? word,
    String? image,
    String? assetImage,
    String? mean,
    int? startTime,
    int? endTime,
    double? eF,
    int? id,
  ) async {
    // TODO: implement addWords
    final data = await database;
    try {
      if (image != null) {
        await data?.rawInsert(
            'insert into Words(word,image,mean,start_time,end_time,id) VALUES '
            '("$word","$image","$mean","$startTime","$endTime","$id")');
      } else if (image == null && assetImage != null) {
        final test = await data?.rawInsert(
            'insert into Words(word,assets_image,mean,start_time,end_time,id) VALUES '
            '("$word","$assetImage","$mean","$startTime","$endTime","$id")');

        print(test);
      } else {
        return -1;
      }
      return 1;
    } catch (e) {
      return -1;
    }
  }

  @override
  Future<List<Map<String, Object?>>?> getAllFromDate(int date, int id) async {
    final data = await database;
    final test = await data
        ?.rawQuery('select * from Words where end_time < $date and id = $id');
    return test;
  }

  @override
  Future<int?> addFavoriteNews(
    String? title,
    String? description,
    String? url,
    String? image,
  ) async {
    final data = await database;
    try {
      await data
          ?.rawInsert('insert into News(title,description,url,image) VALUES '
              '("$title","$description","$url","$image")');
      return 1;
    } catch (_) {
      return -1;
    }
  }

  @override
  Future<List<Map<String, Object?>>?> getFavoriteNews() async {
    final data = await database;
    final test = await data?.rawQuery('select * from News');

    return test;
  }

  @override
  Future<int> deleteFavoriteNew(int id) async {
    final data = await database;
    try {
      await data?.rawDelete('delete from News where id = $id');
      return 1;
    } catch (_) {
      return -1;
    }
  }

  @override
  Future<int?> updateWords(
    String? word,
    int? endTime,
    int? checkNews,
    int? lastChoice,
    int? interval,
    double? ease,
  ) async {
    final data = await database;
    try {

      final test = await data?.rawUpdate(
          "update Words set end_time = $endTime,checkNew = $checkNews"
          ",lastChoice = $lastChoice,interval = $interval,ease = $ease where"
          " word = '$word' ");
      print(test);
      return 1;
    } catch (_) {
      return -1;
    }
  }
}
