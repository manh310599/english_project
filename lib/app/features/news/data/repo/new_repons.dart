
import 'package:english_project/app/features/news/data/api/new_api.dart';
import 'package:english_project/app/features/news/core/abs_repo/abs_news_repo.dart';
import 'package:english_project/app/features/news/presentation/bbc_news/model/bbc_news_model.dart';
import 'package:english_project/depedence.dart';

class NewReponsitory implements NewsRepo {
  NewReponsitory({NewApi? newApi}) {
    _newApi = newApi ?? getIt<NewApi>();
  }

  late final NewApi _newApi;

  @override
  Future<BBCNewModel?> getHeadLinesBBCNew() async {
    final test = await _newApi.getHeadLinesBBCNews();
    return test;
  }
}
