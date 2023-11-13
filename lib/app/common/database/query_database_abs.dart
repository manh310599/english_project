import 'dart:typed_data';

abstract class AbsQueryDatabase {
  Future<List<Map<String, Object?>>?> getAllFromWords();

  Future<List<Map<String, Object?>>?> getAllFromStorageWord();

  Future<List<Map<String, Object?>>?> getAllFromWordByStorage(int? id);

  Future<List<Map<String, Object?>>?> getAllFromDate(int date,int id);
  //////////////////////////////////////ADD/////////////////////////
  Future<void> addStoreWord(String name);

  Future<int?> addWords(
    String? word,
    String? image,
    Uint8List? assetImage,
    String? mean,
    int? startTime,
    int? endTime,
    double? eF,
    int? id,
  ) ;

  ////////////////////Delete///////////////////////////
  Future<int?> deleteStoreWord(int id);
}
