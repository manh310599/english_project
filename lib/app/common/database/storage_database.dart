import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class StorageDatabase {
  static const DB_NAME = 'storage.db';
  static const DB_VERSION = 1;
  static Database? _database;

  StorageDatabase._internal();
  static final StorageDatabase instance = StorageDatabase._internal();

  
}
