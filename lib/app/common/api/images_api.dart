import 'package:retrofit/http.dart';

import '../../../all_file/all_file.dart';
import '../model/image_from_text.dart';

part 'images_api.g.dart';

@RestApi()
abstract class ImagesApi {
  factory ImagesApi(Dio dio) = _ImagesApi;

  @GET('/search/photos')
  Future<ImageFromText?> getImageFromTex({
    @Query('query') String? keyWord,
    @Query('per_page') int? perPage,
  });
}
