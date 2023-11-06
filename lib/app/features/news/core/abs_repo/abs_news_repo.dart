

import 'package:english_project/app/features/news/model/news_model.dart';

abstract class NewsRepo {
  Future<NewModel?> getHeadLinesBBCNew();

  Future<NewModel?> getHeadLinesCNNNews();

  Future<NewModel?> getHeadLinesFoxNews();

  Future<NewModel?> getHeadLinesGoogleNews();

  Future<NewModel?> getNewsUpdate();
}
