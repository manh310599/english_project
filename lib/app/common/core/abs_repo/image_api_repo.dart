import 'package:english_project/app/common/model/image_from_text.dart';

abstract class AbsImageRepo {
  Future<ImageFromText?> imageFromTextRepo({String? keyWord,int? perPage});
}