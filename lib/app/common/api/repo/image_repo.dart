import 'package:english_project/app/common/api/images_api.dart';
import 'package:english_project/app/common/core/abs_repo/image_api_repo.dart';
import 'package:english_project/app/common/model/image_from_text.dart';
import 'package:english_project/depedence.dart';

class ImageRepo extends AbsImageRepo{


  ImageRepo({ImagesApi? imagesApi}) {
    _imagesApi = imagesApi ?? getIt<ImagesApi>();
  }

  late final ImagesApi _imagesApi;

  @override
  Future<ImageFromText?> imageFromTextRepo({String? keyWord,int? perPage}) {
    // TODO: implement imageFromTextRepo

    final data = _imagesApi.getImageFromTex(
      keyWord: keyWord,
      perPage: perPage,
    );

    return data;
  }

}