import '../model/storage_database.dart';

abstract class AbsQueryDatabase {
  Future<List<Map<String, Object?>>?> getAllFromWords();

  Future<List<StorageWord?>> getAllFromStorageWord();

  Future<List<Map<String, Object?>>?> getAllFromWordByStorage(int? id);

  Future<List<Map<String, Object?>>?> getAllFromDate(int date, int id);

  Future<List<Map<String, Object?>>?> getFavoriteNews();

  Future<List<Map<String, Object?>>?> getStoreWordById(int? id);

  //////////////////////////////////////ADD/////////////////////////
  Future<void> addStoreWord(String name);

  Future<int?> addWords(
    String? word,
    String? image,
    String? assetImage,
    String? mean,
    int? startTime,
    int? endTime,
    double? eF,
    int? id,
  );

  Future<int?> addFavoriteNews(
    String? title,
    String? description,
    String? url,
    String? image,
  );

  /////////////////////update//////////////////////////
  Future<int?> updateWords(
    // int? startTime,
    String? word,
    int? endTime,
    int? checkNews,
    int? lastChoice,
    int? interval,
    double? ease,
  );

  Future<void> addFromCSV(
    String? name,
    List<InnerJoinStorageWordAndWord> innerJohn,
  );

  ////////////////////Delete///////////////////////////
  Future<int?> deleteStoreWord(int id);

  Future<void> deleteFavoriteNew(int id);

  Future<void> deleteWord(String word);
}
