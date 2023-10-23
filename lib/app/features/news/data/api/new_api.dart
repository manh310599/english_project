import 'package:english_project/all_file/all_file.dart';
import 'package:retrofit/retrofit.dart';

import '../../presentation/bbc_news/model/bbc_news_model.dart';

part 'new_api.g.dart';

@RestApi()
abstract class NewApi {
  factory NewApi(Dio dio) = _NewApi;

  @GET('/top-headlines?sources=bbc-news')
  Future<BBCNewModel?> getHeadLinesBBCNews();
}
