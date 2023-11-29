import 'dart:io';

import 'package:csv/csv.dart';
import 'package:external_path/external_path.dart';
import 'package:file_picker/file_picker.dart';

Future<String?> get _localPath async {
  final directory = await ExternalPath.getExternalStoragePublicDirectory(
      ExternalPath.DIRECTORY_DOWNLOADS);

  return directory;
}

////create file
Future<File> _localFile(String? nameFile) async {
  final path = await _localPath;
  return File('$path/$nameFile.txt');
}

////write file
Future<File> writeCounter(String? content, String? nameFile) async {

  File file = await _localFile(nameFile);
  List<List<dynamic>> rowsAsListOfValues =
      const CsvToListConverter().convert(content);
  String csv = const ListToCsvConverter().convert(rowsAsListOfValues);
  return file.writeAsString(csv);
}

/////read File/////////
Future<List<List<dynamic>>?> get readCounter async {
  try {
    final path = await _localPath;
    final file = await FilePicker.platform.pickFiles(
        initialDirectory: path,
        type: FileType.custom,
        allowedExtensions: ['txt']);

    final fileContent = File(file?.paths.first ?? '');
    final content = await fileContent.readAsString();
    List<List<dynamic>> rowsAsListOfValues =
        const CsvToListConverter().convert(content);

    return rowsAsListOfValues;
  } catch (e) {
    return null;
  }
}
