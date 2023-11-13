
import 'package:english_project/app/features/news/data/api/new_api.dart';
import 'package:english_project/app/features/news/core/abs_repo/abs_news_repo.dart';
import 'package:english_project/app/features/news/data/api/news_update_api.dart';
import 'package:english_project/depedence.dart';

import '../../model/news_model.dart';

class NewReponsitory implements NewsRepo {
  NewReponsitory({NewApi? newApi}) {
    _newApi = newApi ?? getIt<NewApi>();
  }

  late final  _newApi;

  @override
  Future<NewModel?> getHeadLinesBBCNew() async {
    final test = await _newApi.getHeadLinesBBCNews();
    return test;
  }

  @override
  Future<NewModel?> getHeadLinesCNNNews() async {
    final test = await _newApi.getHeadLinesCNNNews();
    return test;
  }

  @override
  Future<NewModel?> getHeadLinesFoxNews() async {
    final test = await _newApi.getHeadLinesFoxNews();
    return test;
  }

  @override
  Future<NewModel?> getHeadLinesGoogleNews() async {
    final test = await _newApi.getHeadLinesGoogleNews();
    return test;
  }

  @override
  Future<NewModel?> getNewsUpdate() async {
    // TODO: implement getNewsUpdate
    final data = await NewsUpdateApi().getNewsUpdate();
    return data;
  }
}
