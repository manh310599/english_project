

import 'package:english_project/app/features/news/model/news_model.dart';

abstract class NewsRepo {
  Future<NewModel?> getHeadLinesBBCNew();

  Future<NewModel?> getHeadLinesCNNNews();

  Future<NewModel?> getHeadLinesFoxNews();

  Future<NewModel?> getHeadLinesGoogleNews();

  Future<NewModel?> getNewsUpdate();

  Future<NewModel?> getNewsBusiness();

  Future<NewModel?> getNewsEntertainment();

  Future<NewModel?> getNewsGeneral();

  Future<NewModel?> getNewsHealth();

  Future<NewModel?> getNewsScience();

  Future<NewModel?> getNewsSports();

  Future<NewModel?> getNewsTechnology();
}
