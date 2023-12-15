

import 'package:english_project/app/features/news/model/news_model.dart';

abstract class NewsRepo {


  Future<NewModel?> getNewsUpdate();

  Future<NewModel?> getNewsBusiness();

  Future<NewModel?> getNewsEntertainment();

  Future<NewModel?> getNewsGeneral();

  Future<NewModel?> getNewsHealth();

  Future<NewModel?> getNewsScience();

  Future<NewModel?> getNewsSports();

  Future<NewModel?> getNewsTechnology();
}
