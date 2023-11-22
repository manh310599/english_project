import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class StorageDatabase {

  static StorageDatabase? _instance;


  Database? _database;


  StorageDatabase._();


  static StorageDatabase get instance {
    _instance ??= StorageDatabase._();
    return _instance!;
  }

  Future<Database?> initDB() async {

    if (_database != null) {
      return _database;
    }

    final dbpath = await getDatabasesPath();
    final path = join(dbpath, 'storage.db');

    final exist = await databaseExists(path);

    if (exist) {
      print('Database đã được tạo');
      _database = await openDatabase(path);
    } else {
      print('Đang tạo database');

      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (e) {
        print(e);
      }

      ByteData data =
          await rootBundle.load(join("assets/database", "storage.db"));
      List<int> bytes =
          data.buffer.asInt8List(data.offsetInBytes, data.lengthInBytes);

      await File(path).writeAsBytes(bytes, flush: true);

      _database = await openDatabase(path);
    }
    print(path);
    return _database;
  }


}
