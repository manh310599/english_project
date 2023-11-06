import 'package:english_project/all_file/all_file.dart';
import 'package:retrofit/retrofit.dart';

import '../../model/news_model.dart';


part 'new_api.g.dart';

@RestApi()
abstract class NewApi {
  factory NewApi(Dio dio) = _NewApi;

  @GET('/everything/bbc-news.json')
  Future<NewModel?> getHeadLinesBBCNews();

  @GET('/everything/cnn.json')
  Future<NewModel?> getHeadLinesCNNNews();

  @GET('/everything/fox-news.json')
  Future<NewModel?> getHeadLinesFoxNews();

  @GET('/everything/google-news.json')
  Future<NewModel?> getHeadLinesGoogleNews();
}
