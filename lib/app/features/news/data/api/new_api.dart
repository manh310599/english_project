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

  @GET('/top-headlines/category/business/in.json')
  Future<NewModel?> getNewsBusiness();

  @GET('/top-headlines/category/entertainment/in.json')
  Future<NewModel?> getNewsEntertainment();

  @GET('/top-headlines/category/general/in.json')
  Future<NewModel?> getNewsGeneral();

  @GET('/top-headlines/category/health/in.json')
  Future<NewModel?> getNewsHealth();

  @GET('/top-headlines/category/science/in.json')
  Future<NewModel?> getNewsScience();

  @GET('/top-headlines/category/sports/in.json')
  Future<NewModel?> getNewsSports();

  @GET('/top-headlines/category/technology/in.json')
  Future<NewModel?> getNewsTechnology();
}
