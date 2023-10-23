
import '../../presentation/bbc_news/model/bbc_news_model.dart';

abstract class NewsRepo {
  Future<BBCNewModel?> getHeadLinesBBCNew();
}
